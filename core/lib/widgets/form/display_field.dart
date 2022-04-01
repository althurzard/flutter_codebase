import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:core/core.dart';

import '../../generated_images.dart';
import 'form_container.dart';

/// A Material Design text field input.
///
enum FieldType { datetime, dropdown, text }

class DisplayField extends StatelessWidget {
  final bool? isRequired;
  final String title;
  final String? value;
  final bool? enabled;
  final FieldType? fieldType;
  const DisplayField({
    Key? key,
    this.isRequired,
    required this.title,
    this.value,
    this.enabled,
    this.fieldType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FormContainer(
      isRequired: isRequired ?? false,
      enabled: enabled ?? false,
      title: title,
      rightIcon: iconType(),
      child: Container(
        margin: const EdgeInsets.only(right: 40),
        alignment: Alignment.centerLeft,
        child: Text(
          value ?? '',
          style: CoreAppTheme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Widget? iconType() {
    if (fieldType == FieldType.datetime) {
      return Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.only(left: 10),
        child: SvgPicture.asset(Ic.calendar),
      );
    } else if (fieldType == FieldType.dropdown) {
      return Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SvgPicture.asset(Ic.arrowDown),
      );
    } else {
      return null;
    }
  }
}
