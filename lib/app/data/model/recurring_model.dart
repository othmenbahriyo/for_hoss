class Recurring {
  int? id;
  String? startAt;
  String? endAt;
  bool? isAvailable;

  Recurring({this.id, this.startAt, this.endAt, this.isAvailable});

  Recurring.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    isAvailable = json['is_available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['start_at'] = startAt;
    data['end_at'] = endAt;
    data['is_available'] = isAvailable;
    return data;
  }
}