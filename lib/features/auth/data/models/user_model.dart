import 'package:calendar_event/features/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required String accessToken,
    required String id,
    required String email,
    required String firstName,
    required String lastName,
  }) : super(
            accessToken: accessToken,
            id: id,
            email: email,
            firstName: firstName,
            lastName: lastName);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      accessToken: json['access_token'],
      id: json['user']['id'],
      email: json['user']['email'],
      firstName: json['user']['firstName'],
      lastName: json['user']['lastName'],
    );
  }
}
