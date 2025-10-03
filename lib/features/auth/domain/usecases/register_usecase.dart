import 'package:calendar_event/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase({required this.repository});

  Future<void> call(
      String email, String firstName, String lastName, String password) {
    return repository.register(email, firstName, lastName, password);
  }
}
