import 'package:flutter/material.dart';

class AppConsts {
  static const pageSize = 20;
  static const defaultFont = 'GoogleSans';
  static const padding = 16.0;
  static const buttonHeight = 48.0;

  /// This is the common border radious of all the containers in the app.
  static const kStandardBorder = BorderRadius.all(Radius.circular(8));

  /// This is the common border radious of all the containers in the app.
  static const kCardBorder = BorderRadius.all(Radius.circular(padding));

  /// This border is slightly more sharp than the standard boder.
  static const kSharpBorder = BorderRadius.all(Radius.circular(2));

  static const mHorizontal = EdgeInsets.only(left: padding, right: padding);

  static const mVertical = EdgeInsets.only(top: padding, bottom: padding);

  static const kMarginAll = EdgeInsets.all(padding);

  static const leftP = EdgeInsets.only(left: padding);

  static const rightP = EdgeInsets.only(right: padding);

  static const topP = EdgeInsets.only(top: padding);

  static const bottomP = EdgeInsets.only(bottom: padding);

  static final kStandardShadow = BoxShadow(
      spreadRadius: -5,
      blurRadius: 10,
      color: Colors.black.withOpacity(.20),
      offset: const Offset(0, 4));
  static const kCellShadow = BoxShadow(
    spreadRadius: -10,
    blurRadius: 60,
    color: Color.fromARGB(20, 29, 29, 31),
    offset: Offset(4, 12),
  );
  static final kFrameShadow = BoxShadow(
      spreadRadius: 2,
      blurRadius: 10,
      color: Colors.black.withOpacity(.10),
      offset: const Offset(0, 2));
  static const spacingH24 = SizedBox(
    height: 24,
  );
  static const spacingH16 = SizedBox(
    height: padding,
  );
  static const spacingH8 = SizedBox(
    height: 8,
  );
  static const spacingH4 = SizedBox(
    height: 4,
  );
  static const spacingH6 = SizedBox(
    height: 6,
  );
  static const spacingH2 = SizedBox(
    height: 2,
  );
  static const spacingW16 = SizedBox(
    width: padding,
  );
  static const spacingW8 = SizedBox(
    width: 8,
  );
  static const spacingW4 = SizedBox(
    width: 4,
  );
  static const spacingW6 = SizedBox(
    width: 6,
  );
  static const spacingW2 = SizedBox(
    width: 2,
  );
}
