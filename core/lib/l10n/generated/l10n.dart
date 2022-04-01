// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Submit`
  String get submit_btn {
    return Intl.message(
      'Submit',
      name: 'submit_btn',
      desc: 'Submit button check validate',
      args: [],
    );
  }

  /// `Enter your name`
  String get name_hint {
    return Intl.message(
      'Enter your name',
      name: 'name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get email_hint {
    return Intl.message(
      'Enter your email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone`
  String get phone_hint {
    return Intl.message(
      'Enter your phone',
      name: 'phone_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get password_hint {
    return Intl.message(
      'Enter your password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid name`
  String get name_validate {
    return Intl.message(
      'Please enter a valid name',
      name: 'name_validate',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get email_validate {
    return Intl.message(
      'Please enter a valid email',
      name: 'email_validate',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number must be up to 11 digits`
  String get phone_validate {
    return Intl.message(
      'Phone Number must be up to 11 digits',
      name: 'phone_validate',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain an uppercase, lowercase, numeric digit and special character`
  String get password_validate {
    return Intl.message(
      'Password must contain an uppercase, lowercase, numeric digit and special character',
      name: 'password_validate',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_screen_title {
    return Intl.message(
      'Home',
      name: 'home_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Change your language`
  String get change_language_title {
    return Intl.message(
      'Change your language',
      name: 'change_language_title',
      desc: '',
      args: [],
    );
  }

  /// `Error...!`
  String get errorOccur {
    return Intl.message(
      'Error...!',
      name: 'errorOccur',
      desc: '',
      args: [],
    );
  }

  /// `Không được bỏ trống.`
  String get fieldNotEmpty {
    return Intl.message(
      'Không được bỏ trống.',
      name: 'fieldNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm theo tên`
  String get findByName {
    return Intl.message(
      'Tìm kiếm theo tên',
      name: 'findByName',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết nối mạng.`
  String get noInternet {
    return Intl.message(
      'Không có kết nối mạng.',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy kết quả`
  String get noResults {
    return Intl.message(
      'Không tìm thấy kết quả',
      name: 'noResults',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng tìm kiếm lại với từ khóa khác`
  String get tryAnotherKeywords {
    return Intl.message(
      'Vui lòng tìm kiếm lại với từ khóa khác',
      name: 'tryAnotherKeywords',
      desc: '',
      args: [],
    );
  }

  /// `Thử lại`
  String get tryAgain {
    return Intl.message(
      'Thử lại',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Không thể khởi tạo ứng dụng`
  String get cannotInitilizeApp {
    return Intl.message(
      'Không thể khởi tạo ứng dụng',
      name: 'cannotInitilizeApp',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng thử lại`
  String get plsTryAgain {
    return Intl.message(
      'Vui lòng thử lại',
      name: 'plsTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần hỗ trợ?`
  String get needSupport {
    return Intl.message(
      'Bạn cần hỗ trợ?',
      name: 'needSupport',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng gọi số `
  String get plsCall {
    return Intl.message(
      'Vui lòng gọi số ',
      name: 'plsCall',
      desc: '',
      args: [],
    );
  }

  /// `Gọi ngay`
  String get call {
    return Intl.message(
      'Gọi ngay',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Hủy`
  String get cancel {
    return Intl.message(
      'Hủy',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập số điện thoại di động hợp lệ`
  String get validMobile {
    return Intl.message(
      'Vui lòng nhập số điện thoại di động hợp lệ',
      name: 'validMobile',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập ngày tháng hợp lệ`
  String get validBirthday {
    return Intl.message(
      'Vui lòng nhập ngày tháng hợp lệ',
      name: 'validBirthday',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Nhóm`
  String get group {
    return Intl.message(
      'Nhóm',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `Thêm bệnh nhân mới`
  String get addPatient {
    return Intl.message(
      'Thêm bệnh nhân mới',
      name: 'addPatient',
      desc: '',
      args: [],
    );
  }

  /// `Thêm BN`
  String get addP {
    return Intl.message(
      'Thêm BN',
      name: 'addP',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Call service not connected, please try again`
  String get callServiceError {
    return Intl.message(
      'Call service not connected, please try again',
      name: 'callServiceError',
      desc: '',
      args: [],
    );
  }

  /// `Xin vui lòng cấp quyền truy cập cho ứng dụng`
  String get permissionError {
    return Intl.message(
      'Xin vui lòng cấp quyền truy cập cho ứng dụng',
      name: 'permissionError',
      desc: '',
      args: [],
    );
  }

  /// `Hôm nay`
  String get today {
    return Intl.message(
      'Hôm nay',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Ngày mai`
  String get tomorrow {
    return Intl.message(
      'Ngày mai',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 2`
  String get monday {
    return Intl.message(
      'Thứ 2',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 3`
  String get tuesday {
    return Intl.message(
      'Thứ 3',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 4`
  String get wednesday {
    return Intl.message(
      'Thứ 4',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 5`
  String get thurday {
    return Intl.message(
      'Thứ 5',
      name: 'thurday',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 6`
  String get friday {
    return Intl.message(
      'Thứ 6',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Thứ 7`
  String get saturday {
    return Intl.message(
      'Thứ 7',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Chủ nhật`
  String get sunday {
    return Intl.message(
      'Chủ nhật',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Quét mã QR của bệnh nhân`
  String get qrCodeMenuItem {
    return Intl.message(
      'Quét mã QR của bệnh nhân',
      name: 'qrCodeMenuItem',
      desc: '',
      args: [],
    );
  }

  /// `Nhập thông tin bệnh nhân`
  String get enterPatientInfomation {
    return Intl.message(
      'Nhập thông tin bệnh nhân',
      name: 'enterPatientInfomation',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi!`
  String get loadFailed {
    return Intl.message(
      'Đã xảy ra lỗi!',
      name: 'loadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Đang tải...`
  String get loadMore {
    return Intl.message(
      'Đang tải...',
      name: 'loadMore',
      desc: '',
      args: [],
    );
  }

  /// `Đã tải xuống hết!`
  String get noMoreData {
    return Intl.message(
      'Đã tải xuống hết!',
      name: 'noMoreData',
      desc: '',
      args: [],
    );
  }

  /// `Năm sinh không hợp lệ`
  String get yearInvalid {
    return Intl.message(
      'Năm sinh không hợp lệ',
      name: 'yearInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại không hợp lệ`
  String get invalidPhone {
    return Intl.message(
      'Số điện thoại không hợp lệ',
      name: 'invalidPhone',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
