import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:calendar_event/features/events/data/models/event_model.dart';

class ApiDataSource {
  final String baseUrl = "https://my-eventomy-api-production.up.railway.app";

  Future<List<EventModel>> getEvents() async {
    final response = await http.get(Uri.parse("$baseUrl/api/v1/events"));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((json) => EventModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load events');
    }
  }

  Future<void> deleteEvent(String id) async {
    final response = await http.delete(Uri.parse("$baseUrl/api/v1/events/$id"));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete event');
    }
  }
}
