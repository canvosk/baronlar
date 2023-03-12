import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String? uid;
  String? base64;
  String? name;
  String? surname;
  String? username;
  String? email;
  String? password;
  int? friendsCount;
  
  UserModel({
    this.uid,
    this.base64,
    this.name,
    this.surname,
    this.username,
    this.email,
    this.password,
    this.friendsCount,
  });
  
  


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': uid,
      'base64': base64,
      'name': name,
      'surname': surname,
      'username': username,
      'email': email,
      'password': password,
      'friendsCount': friendsCount,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['id'] != null ? map['id'] as String : null,
      base64: map['base64'] != null ? map['base64'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      surname: map['surname'] != null ? map['surname'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      friendsCount: map['friendsCount'] != null ? map['friendsCount'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
