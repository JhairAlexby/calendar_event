import 'package:flutter/foundation.dart';

@immutable
class User {
  final String accessToken;
  final String id;
  final String email;
  final String firstName;
  final String lastName;

  const User({
    required this.accessToken,
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });
}
