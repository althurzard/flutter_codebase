// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import '../generated_images.dart';
// import 'package:authentication_bloc/authentication_bloc.dart';

class NetworkHandlerScreen extends StatefulWidget {
  const NetworkHandlerScreen({Key? key}) : super(key: key);

  @override
  _NetworkHandlerScreenState createState() => _NetworkHandlerScreenState();
}

class _NetworkHandlerScreenState extends State<NetworkHandlerScreen> {
  @override
  void initState() {
    super.initState();
    // FirebaseMessaging.instance.getToken().then((token) {
    //   debug('Firebase token: $token');
    //   if (token != null) {
    //     context.read<AuthenticationBloc>().add(UpdateFCMToken(token: token));
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final connected = connectivity != ConnectivityResult.none;
        Loader.appLoader.setConnectionStatus(connected);
        return connected
            ? child
            : Scaffold(
                backgroundColor: Colors.black26,
                body: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: AppConsts.mHorizontal,
                        padding: AppConsts.kMarginAll,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: AppConsts.kCardBorder),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 52,
                              width: 52,
                              child: Image.asset(Img.wifi),
                            ),
                            const SizedBox(
                              height: AppConsts.padding,
                            ),
                            const Text('Mất kết nối mạng',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                            const SizedBox(height: 8),
                            const Text(
                                'Vui lòng kiểm tra kết nối Wifi/4G của bạn',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                )),
                          ],
                        ),
                      ),
                    ]));
      },
      child: Container(),
    );
  }
}
