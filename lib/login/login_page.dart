import 'package:flutter/material.dart';
import 'package:flutter_provider/login/login_viewmodel.dart';
import 'package:flutter_provider/widget/dialog/loading_manager.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoadingManager _loadingManager = LoadingManager();

  void showMessage(BuildContext context, String msg) {
    if(msg.isNotEmpty) {
      Scaffold.of(context).showSnackBar(
          SnackBar(content: Text(msg, style: TextStyle(color: Colors.green, fontSize: 12),)
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("登录"),
        ),
      ),
      body: Builder(builder: (context) =>  Consumer<LoginViewModel>(
          builder: (context, viewModel, child) {
            return Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _accountController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.supervised_user_circle),
                          labelText: "用户名",
                        ),
                        onChanged: (val) => viewModel.updateBtnColor(val, _passwordController.text),
                      ),
                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            icon: Icon(Icons.verified_user),
                            labelText: "密码"
                        ),
                        onChanged: (val) => viewModel.updateBtnColor(_accountController.text, val),
                      ),
                      RaisedButton(
                        color: viewModel.btnColor,
                        child: Text("登录", style: TextStyle(color: Colors.white, fontSize: 15),),
                        onPressed: () {
                          _loadingManager.showLoading(context);
                          viewModel.login(_accountController.text, _passwordController.text, () {
                            if(viewModel.loginSuccess == true) {
                              showMessage(context, "登录成功~");
                            } else if(viewModel.loginSuccess == false) {
                              showMessage(context, "登录失败~");
                            }
                            _loadingManager.hideLoading(context);
                          });
                        },
                      ),
                    ],
                  ),
                ),
                //LoadingView(isHide: viewModel.hideLoading,)
              ],
            );
          }
      )),
    );
  }

}