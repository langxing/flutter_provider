import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider/framework/base_viewmodel.dart';

class LoginViewModel extends BaseViewModel with ChangeNotifier {
  bool _loginSuccess, _hideLoading = true;
  Color _loginBtnColor;

  @override
  void loadData(BuildContext context) {

  }

  bool get loginSuccess => _loginSuccess;
  bool get hideLoading => _hideLoading;
  Color get btnColor => _loginBtnColor;

  void updateBtnColor(String account, String password) {
    _loginBtnColor = account.isNotEmpty && password.isNotEmpty ? Colors.green : Colors.grey;
    notifyListeners();
  }

  void login( String userName, String passWord, Function callback) async {
    _hideLoading = false;
    notifyListeners();
    await Future.delayed(Duration(seconds: 3), () {
      print("延时1秒后请求数据");
      _hideLoading = true;
      _loginSuccess = userName == "jack" && passWord == "123";
      notifyListeners();
      callback();
    });
  }
}