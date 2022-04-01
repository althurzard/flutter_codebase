import 'package:core/core.dart';
import 'package:diacritic/diacritic.dart';
import 'package:core/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:core/generated_images.dart';
import 'package:sizer/sizer.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class GeoBottomItem<T> {
  final String text;
  final T value;
  const GeoBottomItem({required this.text, required this.value});
}

class GeoBottomSheet<T> extends StatefulWidget {
  static Future<T?> show<T>(BuildContext context,
      {required List<GeoBottomItem> items,
      T? initialValue,
      required String title,
      bool showSearchBar = true,
      Widget Function(GeoBottomItem)? builder}) async {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        elevation: 0,
        useRootNavigator: true,
        isScrollControlled: true,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GeoBottomSheet<T>(
              title: title,
              items: items,
              showSearchBox: showSearchBar,
              initialValue: initialValue,
              builder: builder);
        });
  }

  final List<GeoBottomItem> items;
  final String title;
  final bool showSearchBox;
  final Widget Function(GeoBottomItem)? builder;
  final T? initialValue;
  const GeoBottomSheet(
      {Key? key,
      required this.items,
      required this.title,
      this.showSearchBox = true,
      this.initialValue,
      this.builder})
      : super(key: key);

  @override
  _GeoBottomSheetState createState() => _GeoBottomSheetState();
}

class _GeoBottomSheetState extends State<GeoBottomSheet> {
  List<GeoBottomItem> _temp = [];
  bool _didPop = false;
  final _headerHeight = 69.0;
  final _searchBoxHeight = 48.0;
  late final double _headerContainerHeight;
  late final double _minHeight;
  late final double _maxHeight;
  final SnappingSheetController controller = SnappingSheetController();
  FocusNode? focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _headerContainerHeight =
        widget.showSearchBox ? _headerHeight + _searchBoxHeight : _headerHeight;
    var itemHeight = 60;
    var maxHeight = 90.h;
    var minHeight = 30.h;
    var headerHeight = _headerContainerHeight;
    var totalHeight = (widget.items.length * itemHeight) + headerHeight;
    _minHeight = totalHeight < minHeight ? minHeight : totalHeight;
    _maxHeight = totalHeight < maxHeight ? totalHeight : maxHeight;
    _temp = widget.items;
  }

  void onChangedText(String value) {
    setState(() {
      _temp = value.isEmpty
          ? widget.items
          : widget.items
              .where((element) => removeDiacritics(element.text)
                  .toLowerCase()
                  .contains(removeDiacritics(value).toLowerCase()))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final keyboardAppeared = MediaQuery.of(context).viewInsets.bottom != 0 &&
        controller.isAttached &&
        (FocusManager.instance.primaryFocus == focusNode);
    var minHeight = keyboardAppeared ? 90.h : _minHeight;
    final initPosition = SnappingPosition.pixels(
      positionPixels: minHeight,
    );
    final maxPosition = SnappingPosition.pixels(
        positionPixels: _maxHeight,
        grabbingContentOffset: GrabbingContentOffset.bottom);
    const endPosition = SnappingPosition.factor(
        positionFactor: 0.0, grabbingContentOffset: GrabbingContentOffset.top);
    if (keyboardAppeared) {
      controller.snapToPosition(initPosition);
    }
    return Stack(children: [
      Positioned.fill(
          child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
      )),
      SnappingSheet(
        controller: controller,
        snappingPositions: keyboardAppeared
            ? [
                endPosition,
                initPosition,
              ]
            : [
                endPosition,
                initPosition,
                maxPosition,
              ],
        initialSnappingPosition: initPosition,
        sheetBelow: SnappingSheetContent(
          sizeBehavior: SheetSizeStatic(size: minHeight),
          draggable: true,
          child: _buildContainer(),
        ),
        onSheetMoved: (position) {
          if (position.relativeToSnappingPositions == 0 && !_didPop) {
            _didPop = true;
            Navigator.pop(context);
          }
        },
      )
    ]);
  }

  Widget get _grabbing {
    return Container(
      width: 40,
      height: 6,
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          color: AppColors.neutral300, borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget _buildContainer() {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppConsts.padding),
                topRight: Radius.circular(AppConsts.padding)),
            color: Colors.white),
        child: Column(
          children: [
            SizedBox(
              height: _headerContainerHeight,
              width: 100.w,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: _grabbing,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.showSearchBox) AppConsts.spacingH6,
                        Text(widget.title,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis),
                        if (widget.showSearchBox)
                          Container(
                              margin: const EdgeInsets.only(
                                  top: AppConsts.padding,
                                  left: AppConsts.padding,
                                  right: AppConsts.padding),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: AppColors.borderColor)),
                              height: _searchBoxHeight,
                              child: FormBuilderTextField(
                                focusNode: focusNode,
                                style: const TextStyle(
                                    fontSize: AppSizes.textNormalSize),
                                name: 'search',
                                onChanged: (value) {
                                  if (value != null) {
                                    onChangedText(value);
                                  }
                                },
                                decoration: InputDecoration(
                                    isDense: true,
                                    prefixIconConstraints: BoxConstraints.tight(
                                        const Size(38, 20)),
                                    prefixIcon: SvgPicture.asset(
                                      Ic.searchNormal,
                                    ),
                                    border: InputBorder.none,
                                    hintText: S.of(context).findByName,
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 14)),
                              )),
                        if (widget.showSearchBox)
                          const SizedBox(
                            height: AppConsts.padding / 2,
                          ),
                      ],
                    ))
                  ]),
            ),
            const Seperator(),
            AppConsts.spacingH16,
            if (_temp.isEmpty)
              _buildEmpty()
            else
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SingleChildScrollView(
                      child: _buildListItems(),
                    ),
                  ))
          ],
        ));
  }

  Widget _buildListItems() {
    return Column(
      children: _temp
          .map((e) => InkWell(
                onTap: () {
                  Navigator.pop(context, e.value);
                },
                child: widget.builder != null
                    ? widget.builder!(e)
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppConsts.padding,
                            vertical: AppConsts.padding / 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e.text,
                                    style: TextStyle(
                                        fontWeight:
                                            e.value == widget.initialValue
                                                ? FontWeight.bold
                                                : FontWeight.normal),
                                  ),
                                ),
                                if (e.value == widget.initialValue)
                                  SvgPicture.asset(Ic.tickCircle)
                              ],
                            ),
                            const SizedBox(
                              height: AppConsts.padding,
                            ),
                            const Seperator()
                          ],
                        )),
              ))
          .toList(),
    );
  }

  Widget _buildEmpty() {
    var height = 90.h -
        MediaQuery.of(context).viewInsets.bottom -
        _headerContainerHeight;
    return SizedBox(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Img.empty),
            Text(
              S.of(context).noResults,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AppConsts.spacingH4,
            Text(
              S.of(context).tryAnotherKeywords,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ],
        ));
  }
}
