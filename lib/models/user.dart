class UserModel {
  final String id;
  final String name;
final String email;
  final String imgUrl;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.imgUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'imgUrl': imgUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map, String documentId) {
    return UserModel(
      id: documentId,
      name: map['name'] as String,
      email: map['email'] as String,
      imgUrl: map['imgUrl'] as String,
    );
  }
}
