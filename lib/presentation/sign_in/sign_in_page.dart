import 'package:e_commerce_bloc/application/auth/bloc/auth_bloc.dart';
import 'package:e_commerce_bloc/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthBloc(),
        child: SignInForm(),
      ),
    );
  }
}
