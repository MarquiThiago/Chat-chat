import 'package:chat_chat/common/presentatio/presents.dart';

String? passwordValidator(String? value, String passwordController) {
  if (value == null || value.length < 6) {
    return Presents.toShort;
  } else if (value != passwordController) {
    return Presents.passwordsDoNotMatch;
  }
  return null;
}

String? emailValidator(String? value) {
  if (value == null || !value.contains('@')) {
    return Presents.invalidEmail;
  }
  return null;
}
