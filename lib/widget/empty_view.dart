import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset("image/icon_nodata.png"),
            Text(
              "暂无数据",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12
              ),
            )
          ],
        ),
      ),
    );
  }

}
