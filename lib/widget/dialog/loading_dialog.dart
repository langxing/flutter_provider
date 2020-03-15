import 'package:flutter/material.dart';

class LoadingDialog extends Dialog {
  final String text;

  LoadingDialog({this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      // 透明层类型
      type: MaterialType.transparency,
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}