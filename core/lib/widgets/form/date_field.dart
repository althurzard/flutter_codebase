import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:core/generated_images.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';

import 'form_container.dart';
// enum PickerType { material, cupertino }

/// Field for `Date`, `Time` and `DateTime` input
class DateTimeField extends FormBuilderField<DateTime> {
  final InputType inputType;
  final DateFormat? format;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? currentDate;
  final TimeOfDay initialTime;
  final Icon resetIcon;
  final DatePickerMode initialDatePickerMode;
  final Locale? locale;
  final ui.TextDirection? textDirection;
  final bool useRootNavigator;
  final ValueChanged<DateTime?>? onFieldSubmitted;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextStyle? style;
  final TextAlign textAlign;
  final bool autofocus;
  final bool obscureText;
  final bool autocorrect;
  final MaxLengthEnforcement maxLengthEnforcement;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TransitionBuilder? transitionBuilder;
  final bool showCursor;

  final int? minLines;

  final bool expands;

  final TextInputAction? textInputAction;

  final VoidCallback? onEditingComplete;

  final InputCounterWidgetBuilder? buildCounter;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;

  final double cursorWidth;
  final TextCapitalization textCapitalization;
  final bool alwaysUse24HourFormat;

  final String? cancelText;
  final String? confirmText;
  final String? errorFormatText;
  final String? errorInvalidText;
  final String? fieldHintText;
  final String? fieldLabelText;
  final String? helpText;
  final DatePickerEntryMode initialEntryMode;
  final RouteSettings? routeSettings;

  final TimePickerEntryMode timePickerInitialEntryMode;
  final StrutStyle? strutStyle;
  final SelectableDayPredicate? selectableDayPredicate;
  final String? title;
  final bool? isRequired;

  DateTimeField({
    Key? key,
    //From Super
    required String name,
    FormFieldValidator<DateTime>? validator,
    DateTime? initialValue,
    InputDecoration decoration = const InputDecoration(),
    ValueChanged<DateTime?>? onChanged,
    ValueTransformer<DateTime?>? valueTransformer,
    bool enabled = true,
    FormFieldSetter<DateTime>? onSaved,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    VoidCallback? onReset,
    FocusNode? focusNode,
    this.inputType = InputType.both,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.cursorWidth = 2.0,
    this.enableInteractiveSelection = true,
    this.resetIcon = const Icon(Icons.close),
    this.initialTime = const TimeOfDay(hour: 12, minute: 0),
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.maxLines = 1,
    this.expands = false,
    this.initialDatePickerMode = DatePickerMode.day,
    this.transitionBuilder,
    this.textCapitalization = TextCapitalization.none,
    this.useRootNavigator = true,
    this.alwaysUse24HourFormat = false,
    this.initialEntryMode = DatePickerEntryMode.calendar,
    this.timePickerInitialEntryMode = TimePickerEntryMode.dial,
    this.format,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.currentDate,
    this.locale,
    this.maxLength,
    this.textDirection,
    this.onFieldSubmitted,
    this.controller,
    this.style,
    this.maxLengthEnforcement = MaxLengthEnforcement.none,
    this.inputFormatters,
    this.showCursor = false,
    this.minLines,
    this.textInputAction,
    this.onEditingComplete,
    this.buildCounter,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.cancelText,
    this.confirmText,
    this.errorFormatText,
    this.errorInvalidText,
    this.fieldHintText,
    this.fieldLabelText,
    this.helpText,
    this.routeSettings,
    this.strutStyle,
    this.selectableDayPredicate,
    this.title,
    this.isRequired = true,
  }) : super(
          key: key,
          initialValue: initialValue,
          name: name,
          validator: validator,
          valueTransformer: valueTransformer,
          onChanged: onChanged,
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          enabled: enabled,
          onReset: onReset,
          decoration: decoration,
          focusNode: focusNode,
          builder: (FormFieldState<DateTime?> field) {
            final state = field as _DateTimeFieldState;

            var hasFocus = state.effectiveFocusNode?.hasFocus ?? false;
            var hasError = state.hasError && (isRequired ?? false);
            const dimension = 8.0;

            return FormContainer(
              borderRadius: dimension,
              isRequired: isRequired ?? false,
              errorText: state.errorText,
              title: title ?? '',
              hasError: hasError,
              hasFocus: hasFocus,
              rightIcon: Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(left: 10),
                child: IconButton(
                    onPressed: () {
                      state.requestFocus();
                    },
                    iconSize: 30,
                    color: Colors.white,
                    splashColor: Colors.transparent,
                    icon: SvgPicture.asset(Ic.calendar)),
              ),
              child: Container(
                padding: const EdgeInsets.all(0),
                child: TextField(
                  textDirection: textDirection,
                  textAlign: textAlign,
                  maxLength: maxLength,
                  autofocus: autofocus,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: InputBorder.none,
                    isDense: true,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: '',
                    hintStyle: decoration.hintStyle,
                    suffixText: '',
                    counterText: '',
                  ),
                  readOnly: true,
                  enabled: state.enabled,
                  autocorrect: autocorrect,
                  controller: state._textFieldController,
                  focusNode: state.effectiveFocusNode,
                  inputFormatters: inputFormatters,
                  keyboardType: keyboardType,
                  maxLines: maxLines,
                  obscureText: obscureText,
                  showCursor: showCursor,
                  minLines: minLines,
                  expands: expands,
                  style: const TextStyle(
                      fontSize: AppSizes.textFieldSize,
                      fontWeight: FontWeight.normal,
                      color: AppColors.kTextColor),
                  onEditingComplete: onEditingComplete,
                  buildCounter: buildCounter,
                  cursorColor: cursorColor,
                  cursorRadius: cursorRadius,
                  cursorWidth: cursorWidth,
                  enableInteractiveSelection: enableInteractiveSelection,
                  keyboardAppearance: keyboardAppearance,
                  scrollPadding: scrollPadding,
                  strutStyle: strutStyle,
                  textCapitalization: textCapitalization,
                  textInputAction: textInputAction,
                  maxLengthEnforcement: maxLengthEnforcement,
                ),
              ),
            );
          },
        );

  @override
  _DateTimeFieldState createState() => _DateTimeFieldState();
}

class _DateTimeFieldState
    extends FormBuilderFieldState<DateTimeField, DateTime> {
  late TextEditingController _textFieldController;

  late DateFormat _dateFormat;

  @override
  void initState() {
    super.initState();
    _textFieldController = widget.controller ?? TextEditingController();
    _dateFormat = widget.format ?? _getDefaultDateTimeFormat();
    final initVal = initialValue;
    _textFieldController.text =
        initVal == null ? '' : _dateFormat.format(initVal);
    effectiveFocusNode!.addListener(_handleFocus);
  }

  @override
  void dispose() {
    effectiveFocusNode!.removeListener(_handleFocus);
    // Dispose the _textFieldController when initState created it
    if (null == widget.controller) {
      _textFieldController.dispose();
    }
    super.dispose();
  }

  Future<void> _handleFocus() async {
    if (effectiveFocusNode!.hasFocus && enabled) {
      effectiveFocusNode!.unfocus();
      await onShowPicker(context, value);
    }
  }

  DateFormat _getDefaultDateTimeFormat() {
    final languageCode = widget.locale?.languageCode;
    switch (widget.inputType) {
      case InputType.time:
        return DateFormat.Hm(languageCode);
      case InputType.date:
        return DateFormat.yMd(languageCode);
      case InputType.both:
      default:
        return DateFormat.yMd(languageCode).add_Hms();
    }
  }

  Future<DateTime?> onShowPicker(
      BuildContext context, DateTime? currentValue) async {
    currentValue = value;
    DateTime? newValue;
    switch (widget.inputType) {
      case InputType.date:
        newValue = await _showDatePicker(context, currentValue);
        break;
      case InputType.time:
        final newTime = await _showTimePicker(context, currentValue);
        newValue = null != newTime ? convert(newTime) : null;
        break;
      case InputType.both:
        final date = await _showDatePicker(context, currentValue);
        if (date != null) {
          final time = await _showTimePicker(context, currentValue);
          newValue = combine(date, time);
        }
        break;
      default:
        throw 'Unexpected input type ${widget.inputType}';
    }
    final finalValue = newValue ?? currentValue;
    didChange(finalValue);
    return finalValue;
  }

  Future<DateTime?> _showDatePicker(
      BuildContext context, DateTime? currentValue) {
    return showDatePicker(
      context: context,
      selectableDayPredicate: widget.selectableDayPredicate,
      initialDatePickerMode: widget.initialDatePickerMode,
      initialDate: currentValue ?? widget.initialDate ?? DateTime.now(),
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
      locale: widget.locale,
      textDirection: widget.textDirection,
      useRootNavigator: widget.useRootNavigator,
      builder: widget.transitionBuilder,
      cancelText: widget.cancelText,
      confirmText: widget.confirmText,
      errorFormatText: widget.errorFormatText,
      errorInvalidText: widget.errorInvalidText,
      fieldHintText: widget.fieldHintText,
      fieldLabelText: widget.fieldLabelText,
      helpText: widget.helpText,
      initialEntryMode: widget.initialEntryMode,
      routeSettings: widget.routeSettings,
      currentDate: widget.currentDate,
    );
  }

  Future<TimeOfDay?> _showTimePicker(
      BuildContext context, DateTime? currentValue) async {
    final timePickerResult = await showTimePicker(
      context: context,
      initialTime: currentValue != null
          ? TimeOfDay.fromDateTime(currentValue)
          : widget.initialTime,
      builder: widget.transitionBuilder,
      useRootNavigator: widget.useRootNavigator,
      routeSettings: widget.routeSettings,
      initialEntryMode: widget.timePickerInitialEntryMode,
      helpText: widget.helpText,
      confirmText: widget.confirmText,
      cancelText: widget.cancelText,
    );
    return timePickerResult ??
        (currentValue != null ? TimeOfDay.fromDateTime(currentValue) : null);
  }

  /// Sets the hour and minute of a [DateTime] from a [TimeOfDay].
  DateTime combine(DateTime date, TimeOfDay? time) => DateTime(
      date.year, date.month, date.day, time?.hour ?? 0, time?.minute ?? 0);

  DateTime? convert(TimeOfDay? time) =>
      time == null ? null : DateTime(1, 1, 1, time.hour, time.minute);

  @override
  void didChange(DateTime? val) {
    super.didChange(val);
    _textFieldController.text = (val == null) ? '' : _dateFormat.format(val);
  }
}
