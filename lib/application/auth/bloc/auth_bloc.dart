import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_bloc/domain/auth/email_address.dart';
import 'package:e_commerce_bloc/domain/auth/password.dart';
import 'package:e_commerce_bloc/infrastructure/auth/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      print(e.emailStr);
      yield state.copyWith(emailAddress: EmailAddress(e.emailStr));
    }, passwordChanged: (e) async* {
      yield state.copyWith(password: Password(e.passwordStr));
    }, login: (e) async* {
      final repo = AuthRepository(Dio());
      final token = await repo.login(state.emailAddress, state.password);
    });
  }
}
