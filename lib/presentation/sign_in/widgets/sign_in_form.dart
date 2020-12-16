import 'package:e_commerce_bloc/application/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: ListView(
      children: [
        const Text("Login page"),
        TextFormField(
          decoration: InputDecoration(labelText: "Email"),
          onChanged: (value) => BlocProvider.of<AuthBloc>(context)
              .add(AuthEvent.emailChanged(value)),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: "Password"),
          onChanged: (value) => BlocProvider.of<AuthBloc>(context)
              .add(AuthEvent.passwordChanged(value)),
        ),
        ElevatedButton(
            onPressed: () =>
                BlocProvider.of<AuthBloc>(context).add(AuthEvent.login()),
            child: Text("Login"))
      ],
    ));
  }
}
