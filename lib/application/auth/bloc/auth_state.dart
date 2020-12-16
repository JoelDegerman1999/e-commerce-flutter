part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required EmailAddress emailAddress,
    @required Password password,
  }) = _AuthState;

  factory AuthState.initial() =>
      AuthState(emailAddress: EmailAddress(''), password: Password(""));
}
