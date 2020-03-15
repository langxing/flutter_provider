
import 'package:flutter/material.dart';
import 'package:flutter_provider/widget/dialog/loading_dialog.dart';

class LoadingManager {
  LoadingDialog _dialog;

  /// 显示加载弹窗
  void showLoading(BuildContext context) {
    if (_dialog == null) {
      _dialog = LoadingDialog(text: "玩命加载中...");
    }
    showDialog(
        context: context,
        child: _dialog
    );
  }

  /// 隐藏加载弹窗
  void hideLoading(BuildContext context) {
    if(_dialog != null) {
      Navigator.pop(context);
    }
  }
}
