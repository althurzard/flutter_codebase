import 'package:flutter/material.dart';

import '../../core.dart';

class FormContainer extends StatelessWidget {
  final Widget child;
  final Widget? rightIcon;
  final Widget? leftIcon;
  final bool hasFocus;
  final bool hasError;
  final double borderRadius;
  final String title;
  final bool isRequired;
  final String? errorText;
  final bool enabled;
  const FormContainer(
      {Key? key,
      required this.child,
      this.enabled = true,
      this.rightIcon,
      this.leftIcon,
      this.hasFocus = false,
      this.hasError = false,
      this.isRequired = true,
      this.borderRadius = 16,
      this.title = '',
      this.errorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.all(hasError ? 1 : 0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: (hasFocus
                        ? AppColors.primary
                        : hasError
                            ? AppColors.red
                            : AppColors.neutral400),
                    width: 1.0),
                borderRadius: BorderRadius.circular(borderRadius),
                color: enabled ? Colors.white : AppColors.black.withAlpha(7)),
            child: FormHandlerContainer(
              title: title,
              formField: child,
              isRequired: isRequired,
              hasError: hasError,
              errorText: errorText,
              borderRadius: borderRadius,
              hasFocus: hasFocus,
              rightIcon: rightIcon,
              leftIcon: leftIcon,
            )),
        if (hasError && (errorText ?? '').isNotEmpty)
          const SizedBox(
            height: 5,
          ),
        if (hasError && (errorText ?? '').isNotEmpty)
          Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 0, horizontal: AppConsts.padding),
              child: Text(
                errorText ?? '',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFDC1F36)),
              ))
      ],
    );
  }
}

class FormHandlerContainer extends StatelessWidget {
  final String title;
  final bool isRequired;
  final Widget formField;
  final bool hasError;
  final String? errorText;
  final double borderRadius;
  final Widget? rightIcon;
  final Widget? leftIcon;
  final bool hasFocus;
  const FormHandlerContainer(
      {Key? key,
      this.title = '',
      this.isRequired = true,
      required this.formField,
      this.hasError = false,
      this.errorText,
      this.borderRadius = 12,
      this.hasFocus = false,
      this.rightIcon,
      this.leftIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (leftIcon != null) leftIcon!,
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8, right: 8, top: 4),
                child: Column(
                  children: [
                    if (title.isNotEmpty)
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                color: AppColors.neutral200,
                                fontSize: AppSizes.textTitleSize,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              isRequired == true ? ' *' : '',
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: AppSizes.textTitleSize),
                            )
                          ],
                        ),
                      ),
                    if (title.isNotEmpty)
                      const SizedBox(
                        height: 5,
                      ),
                    Container(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [Container(child: formField)],
                        )),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
            ),
            if (rightIcon != null) rightIcon!
          ],
        ),
      ],
    );
  }
}
