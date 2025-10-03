import 'package:calendar_event/features/auth/data/datasources/api_datasource.dart';
import 'package:calendar_event/features/auth/domain/entities/user.dart';
import 'package:calendar_event/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiDataSource apiDataSource;

  AuthRepositoryImpl({required this.apiDataSource});

  @override
  Future<User> login(String email, String password) {
    return apiDataSource.login(email, password);
  }

  @override
  Future<void> register(
      String email, String firstName, String lastName, String password) {
    return apiDataSource.register(email, firstName, lastName, password);
  }
}
