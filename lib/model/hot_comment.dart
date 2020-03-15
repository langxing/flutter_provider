
class HotComment {
    String avatar;
    String content;
    String good;
    String id;
    String model;
    String nickname;
    String pid;
    String post_id;
    String to_author_name;
    String uid;
    String under_id;
    String update_time;

    HotComment({this.avatar, this.content, this.good, this.id, this.model, this.nickname, this.pid, this.post_id, this.to_author_name, this.uid, this.under_id, this.update_time});

    factory HotComment.fromJson(Map<String, dynamic> json) {
        return HotComment(
            avatar: json['avatar'], 
            content: json['content'], 
            good: json['good'], 
            id: json['id'], 
            model: json['model'], 
            nickname: json['nickname'], 
            pid: json['pid'], 
            post_id: json['post_id'], 
            to_author_name: json['to_author_name'], 
            uid: json['uid'], 
            under_id: json['under_id'], 
            update_time: json['update_time'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['avatar'] = this.avatar;
        data['content'] = this.content;
        data['good'] = this.good;
        data['id'] = this.id;
        data['model'] = this.model;
        data['nickname'] = this.nickname;
        data['pid'] = this.pid;
        data['post_id'] = this.post_id;
        data['to_author_name'] = this.to_author_name;
        data['uid'] = this.uid;
        data['under_id'] = this.under_id;
        data['update_time'] = this.update_time;
        return data;
    }
}