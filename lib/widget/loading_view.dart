import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  bool isHide = false;

  LoadingView({this.isHide});

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: isHide,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.deepOrangeAccent),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "拼命加载中...",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 13
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}