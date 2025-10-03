import 'package:flutter/material.dart';
import 'package:calendar_event/features/auth/data/datasources/api_datasource.dart';
import 'package:calendar_event/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:calendar_event/features/auth/domain/entities/user.dart';
import 'package:calendar_event/features/auth/domain/usecases/login_usecase.dart';
import 'package:calendar_event/features/auth/domain/usecases/register_usecase.dart';

class AuthProvider extends ChangeNotifier {
  User? _user;
  User? get user => _user;

  final LoginUseCase _loginUseCase =
      LoginUseCase(repository: AuthRepositoryImpl(apiDataSource: ApiDataSource()));
  final RegisterUseCase _registerUseCase =
      RegisterUseCase(repository: AuthRepositoryImpl(apiDataSource: ApiDataSource()));

  Future<void> login(String email, String password) async {
    _user = await _loginUseCase(email, password);
    notifyListeners();
  }

  Future<void> register(
      String email, String firstName, String lastName, String password) async {
    await _registerUseCase(email, firstName, lastName, password);
  }
}
