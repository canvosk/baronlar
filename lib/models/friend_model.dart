import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class FriendModel {
  String? uid;
  String? name;
  String? surname;
  String? username;
  
  FriendModel({
    this.uid,
    this.name,
    this.surname,
    this.username,
  });
  



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'surname': surname,
      'username': username,
    };
  }

  factory FriendModel.fromMap(Map<String, dynamic> map) {
    return FriendModel(
      uid: map['uid'] != null ? map['uid'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      surname: map['surname'] != null ? map['surname'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FriendModel.fromJson(String source) => FriendModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
