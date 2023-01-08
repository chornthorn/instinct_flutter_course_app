class UserInfoModel {
  UserInfoModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final int statusCode;
  late final String message;
  late final Data data;

  UserInfoModel.fromJson(Map<String, dynamic> json){
    statusCode = json['status_code'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status_code'] = statusCode;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.userId,
    required this.username,
    required this.userFullName,
    required this.userLevel,
    required this.userType,
    required this.userInOut,
    required this.active,
    required this.siteName,
  });
  late final int userId;
  late final String username;
  late final String userFullName;
  late final String userLevel;
  late final String userType;
  late final String userInOut;
  late final bool active;
  late final String siteName;

  Data.fromJson(Map<String, dynamic> json){
    userId = json['user_id'];
    username = json['username'];
    userFullName = json['user_full_name'];
    userLevel = json['user_level'];
    userType = json['user_type'];
    userInOut = json['user_in_out'];
    active = json['active'];
    siteName = json['site_name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['username'] = username;
    _data['user_full_name'] = userFullName;
    _data['user_level'] = userLevel;
    _data['user_type'] = userType;
    _data['user_in_out'] = userInOut;
    _data['active'] = active;
    _data['site_name'] = siteName;
    return _data;
  }
}