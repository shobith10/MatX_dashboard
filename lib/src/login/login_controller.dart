import 'package:flutter/cupertino.dart';

class LoginContoller extends ChangeNotifier {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool showPassword = false;

  bool isRememberMe = true;

  void changeRememberMe() {
    isRememberMe = !isRememberMe;
    notifyListeners();
  }

  void showOrHidePassword() {
    showPassword = !showPassword;
    notifyListeners();
  }
}
