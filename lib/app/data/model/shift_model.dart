import 'package:bulldozer/app/data/model/recurring_model.dart';

class Shift {
  int? id;
  String? status;
  String? startAt;
  String? endAt;
  String? postName;
  int? postId;
  bool? startSoon;
  Recurring? recurring;
  String? company;
  String? buyPrice;
  int? bonus;
  double? latitude;
  double? longitude;

  Shift(
      {this.id,
        this.status,
        this.startAt,
        this.endAt,
        this.postName,
        this.postId,
        this.startSoon,
        this.recurring,
        this.company,
        this.buyPrice,
        this.bonus,
        this.latitude,
        this.longitude});

  Shift.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    postName = json['post_name'];
    postId = json['post_id'];
    startSoon = json['start_soon'];
    recurring = json['recurring'] != null
        ?  Recurring.fromJson(json['recurring'])
        : null;
    company = json['company'];
    buyPrice = json['buy_price'];
    bonus = json['bonus'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['start_at'] = startAt;
    data['end_at'] = endAt;
    data['post_name'] = postName;
    data['post_id'] = postId;
    data['start_soon'] = startSoon;
    if (recurring != null) {
      data['recurring'] = recurring!.toJson();
    }
    data['company'] = company;
    data['buy_price'] = buyPrice;
    data['bonus'] = bonus;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}