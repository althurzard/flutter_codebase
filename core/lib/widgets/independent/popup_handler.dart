import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Popup {
  static void showError(BuildContext context,
      {String? title, String? message}) {
    Flushbar(
      duration: const Duration(milliseconds: 5000),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      flushbarPosition: FlushbarPosition.TOP,
      messageText: Text(
        message ?? '',
        style: CoreAppTheme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontWeight: FontWeight.normal, color: AppColors.error),
      ),
      backgroundColor: AppColors.errorLight,
      boxShadows: [
        BoxShadow(
          color: AppColors.errorLight.withAlpha(100),
          offset: const Offset(0.0, 2.0),
          blurRadius: 3.0,
        )
      ],
    ).show(context);
  }

  static void showSuccess(BuildContext context,
      {String? title, String? message}) {
    Flushbar(
      duration: const Duration(milliseconds: 2000),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      flushbarPosition: FlushbarPosition.BOTTOM,
      messageText: Text(
        message ?? '',
        style: CoreAppTheme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontWeight: FontWeight.normal, color: AppColors.success),
      ),
      backgroundColor: AppColors.successLight,
      boxShadows: [
        BoxShadow(
          color: AppColors.successLight.withAlpha(100),
          offset: const Offset(0.0, 2.0),
          blurRadius: 3.0,
        )
      ],
    ).show(context).then((value) => null);
  }

  static void showSuccessCallBack(BuildContext context,
      {String? title, String? message, VoidCallback? callback}) {
    Flushbar(
      duration: const Duration(milliseconds: 1500),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      flushbarPosition: FlushbarPosition.BOTTOM,
      messageText: Text(
        message ?? '',
        style: CoreAppTheme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontWeight: FontWeight.normal, color: AppColors.success),
      ),
      backgroundColor: AppColors.successLight,
      boxShadows: [
        BoxShadow(
          color: AppColors.successLight.withAlpha(100),
          offset: const Offset(0.0, 2.0),
          blurRadius: 3.0,
        )
      ],
    ).show(context).then((value) => callback?.call());
  }

  static void showInformation(BuildContext context,
      {String? title, String? message}) {
    Flushbar(
      duration: const Duration(milliseconds: 2000),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      flushbarPosition: FlushbarPosition.TOP,
      messageText: Text(
        message ?? '',
        style: CoreAppTheme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(fontWeight: FontWeight.normal, color: AppColors.info),
      ),
      backgroundColor: AppColors.informationLight,
      boxShadows: [
        BoxShadow(
          color: AppColors.informationLight.withAlpha(100),
          offset: const Offset(0.0, 2.0),
          blurRadius: 3.0,
        )
      ],
    ).show(context);
  }

  static AwesomeDialog showGeneralPopup(
      {BuildContext? context,
      required Widget child,
      AlignmentGeometry alignment = Alignment.bottomCenter,
      EdgeInsetsGeometry? margin,
      BorderRadiusGeometry? borderRadius,
      bool? useRootNavigator}) {
    var dialog = AwesomeDialog(
      context: Get.context!,
      useRootNavigator: useRootNavigator ?? true,
      padding: EdgeInsets.zero,
      margin: margin,
      dialogType: DialogType.NO_HEADER,
      animType: AnimType.BOTTOMSLIDE,
      dialogBorderRadius: borderRadius,
      aligment: alignment,
      btnCancel: Container(),
      btnOk: Container(),
      body: child,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    );
    dialog.show();

    return dialog;
  }
}
