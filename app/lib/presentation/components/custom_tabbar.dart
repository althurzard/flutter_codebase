import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomTabbar extends StatefulWidget {
  final NavBarEssentials? navBarEssentials;
  final NavBarDecoration? navBarDecoration;
  final bool? confineToSafeArea;
  final bool? hideNavigationBar;
  const CustomTabbar(
      {Key? key,
      this.navBarEssentials = const NavBarEssentials(items: null),
      this.navBarDecoration = const NavBarDecoration(),
      this.confineToSafeArea,
      this.hideNavigationBar})
      : super(key: key);

  @override
  _CustomTabbarState createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  var selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.navBarEssentials?.selectedIndex ?? 0;
    var controller = getIt.get<PersistentTabController>();
    controller.addListener(() {
      setState(() {
        selectedIndex = controller.index;
      });
    });
  }

  Widget _buildItem(BuildContext context, PersistentBottomNavBarItem item,
      bool isSelected, double? height) {
    return widget.navBarEssentials!.navBarHeight == 0
        ? const SizedBox.shrink()
        : Container(
            width: 150.0,
            height: height,
            color: Colors.transparent,
            padding: EdgeInsets.only(
                top: widget.navBarEssentials!.padding?.top ??
                    widget.navBarEssentials!.navBarHeight! * 0.15,
                bottom: widget.navBarEssentials!.padding?.bottom ??
                    widget.navBarEssentials!.navBarHeight! * 0.12),
            child: Container(
              alignment: Alignment.center,
              height: height,
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: IconTheme(
                          data: IconThemeData(
                              size: item.iconSize,
                              color: isSelected
                                  ? (item.activeColorSecondary ??
                                      item.activeColorPrimary)
                                  : item.inactiveColorPrimary ??
                                      item.activeColorPrimary),
                          child: isSelected
                              ? item.icon
                              : item.inactiveIcon ?? item.icon,
                        ),
                      ),
                      item.title == null
                          ? const SizedBox.shrink()
                          : Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Material(
                                type: MaterialType.transparency,
                                child: FittedBox(
                                    child: Text(
                                  item.title!,
                                  style: item.textStyle != null
                                      ? (item.textStyle!.apply(
                                          color: isSelected
                                              ? (item.activeColorSecondary ??
                                                  item.activeColorPrimary)
                                              : item.inactiveColorPrimary))
                                      : TextStyle(
                                          color: isSelected
                                              ? (item.activeColorSecondary ??
                                                  item.activeColorPrimary)
                                              : item.inactiveColorPrimary,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0),
                                )),
                              ),
                            )
                    ],
                  )
                ],
              ),
            ),
          );
  }

  // ignore: unused_element
  Widget _buildMiddleItem(
      PersistentBottomNavBarItem item, bool isSelected, double? height) {
    return widget.navBarEssentials!.navBarHeight == 0
        ? const SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.only(
                top: widget.navBarEssentials!.padding?.top ?? 0.0,
                bottom: widget.navBarEssentials!.padding?.bottom ?? 0.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: Center(
                    child: SizedBox(
                      width: 150.0,
                      height: height,
                      child: Container(
                        alignment: Alignment.center,
                        height: height,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        size: item.iconSize,
                                        color: item.activeColorSecondary ??
                                            item.activeColorPrimary),
                                    child: isSelected
                                        ? item.icon
                                        : item.inactiveIcon ?? item.icon,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                item.title == null
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Material(
                            type: MaterialType.transparency,
                            child: FittedBox(
                                child: Text(
                              item.title!,
                              style: item.textStyle != null
                                  ? (item.textStyle!.apply(
                                      color: isSelected
                                          ? (item.activeColorSecondary ??
                                              item.activeColorPrimary)
                                          : item.inactiveColorPrimary))
                                  : TextStyle(
                                      color: isSelected
                                          ? (item.activeColorPrimary)
                                          : item.inactiveColorPrimary,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0),
                            )),
                          ),
                        ),
                      )
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      right: false,
      left: false,
      bottom: widget.navBarEssentials!.navBarHeight == 0.0 ||
              (widget.hideNavigationBar ?? false)
          ? false
          : widget.confineToSafeArea ?? true,
      child: Container(
        decoration: getNavBarDecoration(
          decoration: widget.navBarDecoration,
          color: widget.navBarEssentials!.backgroundColor,
          opacity: widget.navBarEssentials!
              .items![widget.navBarEssentials!.selectedIndex!].opacity,
        ),
        child: SizedBox(
          width: double.infinity,
          height: widget.navBarEssentials!.navBarHeight,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius:
                    widget.navBarDecoration!.borderRadius ?? BorderRadius.zero,
                child: BackdropFilter(
                  filter:
                      widget.navBarEssentials!.items![selectedIndex].filter ??
                          ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: widget.navBarEssentials!.items!.map((item) {
                      var index = widget.navBarEssentials!.items!.indexOf(item);
                      return Flexible(
                        child: GestureDetector(
                          onTap: () {
                            if (widget.navBarEssentials!.items![index]
                                    .onPressed !=
                                null) {
                              widget.navBarEssentials!.items![index].onPressed!(
                                  widget.navBarEssentials!
                                      .selectedScreenBuildContext);
                            } else {
                              widget.navBarEssentials!.onItemSelected!(index);
                            }
                          },
                          child: _buildItem(
                              context,
                              item,
                              selectedIndex == index,
                              widget.navBarEssentials!.navBarHeight),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
