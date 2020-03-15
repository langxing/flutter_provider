import 'package:flutter_provider/model/home_data.dart';

class HomeArticle {
    int code;
    List<HomeData> datas;
    String msg;
    String status;

    HomeArticle({this.code, this.datas, this.msg, this.status});

    factory HomeArticle.fromJson(Map<String, dynamic> json) {
        return HomeArticle(
            code: json['code'], 
            datas: json['datas'] != null ? (json['datas'] as List).map((i) => HomeData.fromJson(i)).toList() : null,
            msg: json['msg'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['msg'] = this.msg;
        data['status'] = this.status;
        if (this.datas != null) {
            data['datas'] = this.datas.map((v) => v.toJson()).toList();
        }
        return data;
    }
}