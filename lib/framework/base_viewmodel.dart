
import 'package:flutter/material.dart';

abstract class BaseViewModel {
  var _isInit = false;

  bool get isInit => _isInit;

  @mustCallSuper
  void init(BuildContext context) {
    if(!_isInit) {
      _isInit = true;
      doInit(context);
    }
  }

  /// 初始化
  @protected
  void doInit(BuildContext context) {
    loadData(context);
  }

  /// 加载数据
  @protected
  void loadData(BuildContext context);

  /// 内存回收
  void dispose();
}