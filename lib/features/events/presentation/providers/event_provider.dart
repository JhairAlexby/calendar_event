import 'package:flutter/material.dart';
import 'package:calendar_event/features/events/data/datasources/api_datasource.dart';
import 'package:calendar_event/features/events/data/repositories/event_repository_impl.dart';
import 'package:calendar_event/features/events/domain/entities/event.dart';
import 'package:calendar_event/features/events/domain/usecases/get_events_usecase.dart';
import 'package:calendar_event/features/events/domain/usecases/delete_event_usecase.dart';

class EventProvider extends ChangeNotifier {
  List<Event> _events = [];
  List<Event> get events => _events;

  final GetEventsUseCase _getEventsUseCase = GetEventsUseCase(
      repository: EventRepositoryImpl(apiDataSource: ApiDataSource()));
  final DeleteEventUseCase _deleteEventUseCase = DeleteEventUseCase(
      repository: EventRepositoryImpl(apiDataSource: ApiDataSource()));

  Future<void> fetchEvents() async {
    _events = await _getEventsUseCase();
    notifyListeners();
  }

  Future<void> deleteEvent(String id) async {
    await _deleteEventUseCase(id);
    _events.removeWhere((event) => event.id == id);
    notifyListeners();
  }
}
