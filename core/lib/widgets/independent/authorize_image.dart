import 'package:core/configs/flavor.dart';
import 'package:core/di/di_components.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';

class AuthorizeImage extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  const AuthorizeImage(this.url, {Key? key, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var token = getIt.get<DefaultStorageTokenProcessor>().getCurrentToken();
    return Image.network(
      '${FlavorConfig.configs.baseUrl}/bn$url',
      fit: fit,
      headers: {'Authorization': 'Bearer $token'},
    );
  }
}
