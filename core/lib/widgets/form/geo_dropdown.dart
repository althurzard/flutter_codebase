import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:core/core.dart';
import 'dropdown_field.dart';

class GeoDropdown<T> extends StatefulWidget {
  final T? initialValue;
  final String label;
  final String name;
  final List<GeoBottomItem<T>> items;
  final bool isRequired;
  final bool showSearchBar;
  final String dropdownTitle;
  final String? placeholder;
  final ValueSetter<T>? onSelected;
  final GlobalKey<FormBuilderState>? formKey;
  const GeoDropdown(
      {Key? key,
      this.initialValue,
      required this.label,
      required this.dropdownTitle,
      required this.name,
      required this.items,
      this.isRequired = true,
      this.showSearchBar = true,
      this.placeholder,
      this.onSelected,
      this.formKey})
      : super(key: key);
  @override
  _GeoDropdownState<T> createState() => _GeoDropdownState<T>();
}

class _GeoDropdownState<T> extends State<GeoDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          child: DropdownField<T>(
            initialValue: widget.initialValue,
            decoration: InputDecoration(
                labelText: widget.label, hintText: widget.label),
            name: widget.name,
            isRequired: widget.isRequired,
            hint: widget.placeholder != null
                ? Text(
                    widget.placeholder!,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xFFB6B6B9)),
                  )
                : null,
            items: widget.items
                .map((e) => DropdownMenuItem(
                      value: e.value,
                      child: Text(e.text),
                    ))
                .toList(),
            validator: widget.isRequired
                ? Validator.required(context)
                : (value) => null,
          ),
        ),
        Positioned.fill(
            child: GestureDetector(
                onTap: () async {
                  if (widget.items.isNotEmpty) {
                    var item = await GeoBottomSheet.show<T>(context,
                        initialValue: widget
                            .formKey?.currentState?.fields[widget.name]?.value,
                        items: widget.items,
                        title: widget.dropdownTitle,
                        showSearchBar: widget.showSearchBar);
                    var value = widget
                        .formKey?.currentState?.fields[widget.name]?.value;
                    if (item != null && value != item) {
                      widget.formKey?.currentState?.fields[widget.name]
                          ?.didChange(item);
                      if (widget.onSelected != null && value != item) {
                        widget.onSelected!(item);
                      }
                    }
                  }
                },
                child: Container(
                  color: Colors.transparent,
                )))
      ],
    );
  }
}
