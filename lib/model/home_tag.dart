
class HomeTag {
    String name;

    HomeTag({this.name});

    factory HomeTag.fromJson(Map<String, dynamic> json) {
        return HomeTag(
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        return data;
    }
}