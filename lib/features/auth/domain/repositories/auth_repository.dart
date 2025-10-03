import 'package:calendar_event/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<void> register(
      String email, String firstName, String lastName, String password);
}
