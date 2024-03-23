class AdminModel {
  int? id;
  String? createdAt;
  String? username;
  String? password;

  AdminModel({this.id, this.createdAt, this.username, this.password});

  AdminModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
