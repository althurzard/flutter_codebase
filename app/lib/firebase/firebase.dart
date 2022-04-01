import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:core/core.dart';

Future<void> initFirebase() async {
  // init firebase core.
  await Firebase.initializeApp();

  await RemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 60),
    minimumFetchInterval: const Duration(milliseconds: 2),
  ));

  try {
    await RemoteConfig.instance.fetchAndActivate();
  } catch (_) {}

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  // callback when app open and have incoming notification
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    debug('Did receive message');
    debug(message);
  });

  // callback when app open and have incoming notification
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    debug('Did open app message');
    debug(message);
  });

  var settings = await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    debug('User granted permission');
    // callback to get Token Firebase

  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    debug('User granted provisional permission');
  } else {
    debug('User declined or has not accepted permission');
  }
}

// callback handle notification when app in background.
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debug('Did receive background message');
  debug(message);
}
