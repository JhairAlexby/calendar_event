import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:calendar_event/features/auth/data/models/user_model.dart';

class ApiDataSource {
  final String baseUrl = "https://my-eventomy-api-production.up.railway.app";

  Future<UserModel> login(String email, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/api/v1/auth/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body)['data']);
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<void> register(
      String email, String firstName, String lastName, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/api/v1/auth/register"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'password': password,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to register');
    }
  }
}
