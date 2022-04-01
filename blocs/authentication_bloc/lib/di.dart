import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:get_it/get_it.dart';
import 'authentication_bloc.dart';

void buildDI({
  required StorageTokenProcessor storageTokenProcessor,
  required NetworkConfigurable networkConfigurable,
}) async {
  GetIt.instance.registerFactory<AuthenticationBloc>(() {
    var client = AuthenticationClient(
        storageTokenProcessor: storageTokenProcessor,
        networkConfiguration: networkConfigurable);

    return AuthenticationBloc(
        authenticationRepository: client,
        storageTokenProcessor: storageTokenProcessor,
        domain: networkConfigurable);
  });
}
