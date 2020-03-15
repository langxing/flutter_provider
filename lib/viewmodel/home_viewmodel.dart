import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_provider/framework/base_viewmodel.dart';
import 'package:flutter_provider/model/home_article.dart';
import 'package:flutter_provider/model/home_data.dart';

class HomeViewModel extends BaseViewModel with ChangeNotifier {
  List<HomeData> data = [];

  @override
  void loadData(BuildContext context) async {
    var str = await DefaultAssetBundle.of(context).loadString("json/HomeData.json");
    var model = HomeArticle.fromJson(json.decode(str));
    data = model.datas;
    notifyListeners();
  }

}