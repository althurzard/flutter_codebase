import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:authentication_bloc/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class WaitingSyncScreen extends StatelessWidget {
  const WaitingSyncScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            if (state.status == AuthenticationStatus.initital) {
              context
                  .read<AuthenticationBloc>()
                  .add(InitStateEvent(callback: (state) {
                Get.offNamed(DeeplinkConstant.homeScreen);
              }));
            }
            return const Loading();
          }),
    );
  }
}
