import 'package:firebase_remote_config/firebase_remote_config.dart';

enum Flavor { dev, stg, prod }

class FlavorValues {
  FlavorValues({
    required this.baseUrl,
  });
  final String baseUrl;
//Add other flavor specific values, e.g database name
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final FlavorValues values;
  static FlavorConfig? _instance;

  factory FlavorConfig(
      {required Flavor flavor,
      required String name,
      required FlavorValues values}) {
    _instance ??= FlavorConfig._internal(flavor, name, values);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.name, this.values);
  static FlavorConfig get instance {
    return _instance!;
  }

  static FlavorValues get configs {
    return instance.values;
  }

  static bool isProduction() => _instance!.flavor == Flavor.prod;
  static bool isDevelopment() => _instance!.flavor == Flavor.dev;
  static bool isStaging() => _instance!.flavor == Flavor.stg;
}

void setFlavorEnvironment(Flavor flavor) {
  var configs = _getRemoteConfigs(flavor);
  FlavorConfig(flavor: Flavor.dev, name: flavor.toString(), values: configs);
}

FlavorValues _getRemoteConfigs(Flavor flavor) {
  final remoteConfig = RemoteConfig.instance;

  var domain = '';
  switch (flavor) {
    case Flavor.dev:
      domain = remoteConfig.getString('appDomainDev');
      break;
    case Flavor.prod:
      domain = remoteConfig.getString('appDomainProd');
      break;
    case Flavor.stg:
      domain = remoteConfig.getString('appDomainStg');
  }
  return FlavorValues(baseUrl: domain);
}
