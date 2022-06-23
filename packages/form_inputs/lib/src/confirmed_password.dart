import 'package:formz/formz.dart';

/// Validation errors for the [ConfirmedPassword] [FormzInput].
enum ConfirmedPasswordValidationError {
  /// Generic invalid error.
  invalid
}

/// Form input for a confirmed password input.
class ConfirmedPassword extends FormzInput<String, ConfirmedPasswordValidationError>{
  ///initial/unset
  const ConfirmedPassword.pure({this.password = ''}) 
      : super.pure('');

  /// set
  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  /// The original password.
  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}
