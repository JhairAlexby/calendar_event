import 'package:calendar_event/features/auth/domain/entities/user.dart';
import 'package:calendar_event/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase({required this.repository});

  Future<User> call(String email, String password) {
    return repository.login(email, password);
  }
}
