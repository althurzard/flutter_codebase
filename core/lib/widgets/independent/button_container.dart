import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:core/core.dart';
import '../../generated_images.dart';

class ButtonContainer extends StatelessWidget {
  final Widget? text;
  final String? textString;
  final Widget? icon;
  final double? height;
  final double? width;
  final VoidCallback press;
  final bool isLoading;
  final Color? color;
  final MainAxisSize mainAxisSize;
  final bool onlyText;
  final bool disabled;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final bool outline;
  const ButtonContainer(
      {Key? key,
      this.text,
      this.textString,
      this.height,
      this.width,
      this.icon,
      required this.press,
      this.isLoading = false,
      this.mainAxisSize = MainAxisSize.min,
      this.onlyText = true,
      this.disabled = false,
      this.outline = false,
      this.padding,
      this.borderRadius,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? AppConsts.buttonHeight,
        child: TextButton(
          style: TextButton.styleFrom(
              padding: padding ??
                  EdgeInsets.only(
                      left: isLoading || onlyText ? AppConsts.padding : 40,
                      top: 0,
                      bottom: 0,
                      right: AppConsts.padding),
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: outline
                  ? Colors.white
                  : (disabled ? AppColors.neutral300 : AppColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(8),
              ),
              side:
                  outline ? const BorderSide(color: AppColors.primary) : null),
          onPressed: press,
          child: isLoading
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: mainAxisSize,
                  // Replace with a Row for horizontal icon + text
                  children: const [
                    SpinKitCircle(
                      color: Colors.white,
                      size: 30.0,
                    )
                  ],
                )
              : onlyText
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: mainAxisSize,
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        _text ?? icon ?? SvgPicture.asset(Ic.arrowRight)
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: mainAxisSize,
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        _text ?? Container(),
                        AppConsts.spacingW16,
                        icon ?? SvgPicture.asset(Ic.arrowRight),
                      ],
                    ),
        ));
  }

  Widget? get _text {
    return text ??
        (textString != null
            ? Text(textString!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: outline
                        ? AppColors.primary
                        : (disabled ? AppColors.neutral100 : Colors.white)))
            : null);
  }
}

class ButtonContainerDisable extends StatelessWidget {
  final Widget text;
  final Widget? icon;
  final double? height;
  const ButtonContainerDisable({
    Key? key,
    required this.text,
    this.height,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? AppConsts.buttonHeight,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
              color: AppColors.accent, borderRadius: AppConsts.kCardBorder),
          child: ElevatedButton(
            onPressed: () {},
            child: icon == null
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      text,
                      SvgPicture.asset(Ic.arrowRight),
                    ],
                  )
                : text,
          ),
        ));
  }
}

class DisabledButton extends StatelessWidget {
  final Widget text;
  final double? height;
  final double? width;
  final VoidCallback press;
  final Color? color;
  final BorderRadius? borderRadius;
  const DisabledButton(
      {Key? key,
      required this.text,
      this.height,
      this.width,
      required this.press,
      this.color,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height == 0 ? null : height ?? AppConsts.buttonHeight,
        width: width == 0 ? null : double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: color ?? AppColors.accent,
              borderRadius: borderRadius ?? AppConsts.kCardBorder),
          child: ElevatedButton(
            onPressed: press,
            child: text,
          ),
        ));
  }
}

class DisabledGreyButton extends StatelessWidget {
  final Widget text;
  final double? height;
  final VoidCallback press;
  const DisabledGreyButton({
    Key? key,
    required this.text,
    this.height,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? AppConsts.buttonHeight,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
              color: AppColors.seperator, borderRadius: AppConsts.kCardBorder),
          child: ElevatedButton(
            onPressed: press,
            child: text,
          ),
        ));
  }
}

class AppOutlineButton extends StatelessWidget {
  final Widget text;
  final double? height;
  final VoidCallback press;
  const AppOutlineButton({
    Key? key,
    required this.text,
    this.height,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? AppConsts.buttonHeight,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: AppConsts.kCardBorder,
              border: Border.all(color: AppColors.primary)),
          child: ElevatedButton(
            onPressed: press,
            child: text,
          ),
        ));
  }
}
