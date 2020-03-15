import 'package:flutter/material.dart';
import 'package:flutter_provider/framework/base_viewmodel.dart';

class ViewModelProvider<T extends BaseViewModel> extends StatefulWidget {
  final T viewModel;
  final Widget child;

  ViewModelProvider({@required this.viewModel, @required this.child});

  @override
  State<StatefulWidget> createState() {
    return _ViewModelProviderState();
  }

  static T of<T extends BaseViewModel>(BuildContext context) {
    final type = _typeOf<ViewModelProvider<T>>();
    ViewModelProvider<T> provider = context.ancestorWidgetOfExactType(type);
    return provider.viewModel;
  }

  static Type _typeOf<T>() => T;

}

class _ViewModelProviderState extends State<ViewModelProvider> {

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    widget.viewModel.dispose();
    super.dispose();
  }
}