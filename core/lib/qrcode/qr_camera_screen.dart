import 'dart:developer';

import 'package:core/di/di_components.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'qrcode_reader_view.dart';
import 'package:get/get.dart';

class QRCameraScreen extends StatelessWidget {
  const QRCameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QrcodeReaderView(
        onScan: (result) async {
          Get.back(result: result);
        },
        headerWidget: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
    );
  }
}
