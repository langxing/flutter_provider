import 'home_tag.dart';
import 'hot_comment.dart';

class HomeData {
    String author;
    String avatar;
    String bookmark;
    String category;
    String comment;
    String create_time;
    String discover;
    String excerpt;
    String fm;
    String fm_play;
    String good;
    List<HotComment> hot_comments;
    String html5;
    String id;
    String lead;
    String link_url;
    String lunar_type;
    String model;
    String name;
    int parseXML;
    String position;
    String publish_time;
    String share;
    String show_uid;
    String status;
    List<HomeTag> tags;
    String thumbnail;
    String title;
    int tpl;
    String uid;
    String update_time;
    String video;
    String view;

    HomeData({this.author, this.avatar, this.bookmark, this.category, this.comment, this.create_time, this.discover, this.excerpt, this.fm, this.fm_play, this.good, this.hot_comments, this.html5, this.id, this.lead, this.link_url, this.lunar_type, this.model, this.name, this.parseXML, this.position, this.publish_time, this.share, this.show_uid, this.status, this.tags, this.thumbnail, this.title, this.tpl, this.uid, this.update_time, this.video, this.view});

    factory HomeData.fromJson(Map<String, dynamic> json) {
        return HomeData(
            author: json['author'], 
            avatar: json['avatar'], 
            bookmark: json['bookmark'], 
            category: json['category'], 
            comment: json['comment'], 
            create_time: json['create_time'], 
            discover: json['discover'], 
            excerpt: json['excerpt'], 
            fm: json['fm'], 
            fm_play: json['fm_play'], 
            good: json['good'], 
            hot_comments: json['hot_comments'] != null ? (json['hot_comments'] as List).map((i) => HotComment.fromJson(i)).toList() : null, 
            html5: json['html5'], 
            id: json['id'], 
            lead: json['lead'], 
            link_url: json['link_url'], 
            lunar_type: json['lunar_type'], 
            model: json['model'], 
            name: json['name'], 
            parseXML: json['parseXML'], 
            position: json['position'], 
            publish_time: json['publish_time'], 
            share: json['share'], 
            show_uid: json['show_uid'], 
            status: json['status'], 
            tags: json['tags'] != null ? (json['tags'] as List).map((i) => HomeTag.fromJson(i)).toList() : null,
            thumbnail: json['thumbnail'], 
            title: json['title'], 
            tpl: json['tpl'], 
            uid: json['uid'], 
            update_time: json['update_time'], 
            video: json['video'], 
            view: json['view'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['author'] = this.author;
        data['avatar'] = this.avatar;
        data['bookmark'] = this.bookmark;
        data['category'] = this.category;
        data['comment'] = this.comment;
        data['create_time'] = this.create_time;
        data['discover'] = this.discover;
        data['excerpt'] = this.excerpt;
        data['fm'] = this.fm;
        data['fm_play'] = this.fm_play;
        data['good'] = this.good;
        data['html5'] = this.html5;
        data['id'] = this.id;
        data['lead'] = this.lead;
        data['link_url'] = this.link_url;
        data['lunar_type'] = this.lunar_type;
        data['model'] = this.model;
        data['name'] = this.name;
        data['parseXML'] = this.parseXML;
        data['position'] = this.position;
        data['publish_time'] = this.publish_time;
        data['share'] = this.share;
        data['show_uid'] = this.show_uid;
        data['status'] = this.status;
        data['thumbnail'] = this.thumbnail;
        data['title'] = this.title;
        data['tpl'] = this.tpl;
        data['uid'] = this.uid;
        data['update_time'] = this.update_time;
        data['video'] = this.video;
        data['view'] = this.view;
        if (this.hot_comments != null) {
            data['hot_comments'] = this.hot_comments.map((v) => v.toJson()).toList();
        }
        if (this.tags != null) {
            data['tags'] = this.tags.map((v) => v.toJson()).toList();
        }
        return data;
    }
}