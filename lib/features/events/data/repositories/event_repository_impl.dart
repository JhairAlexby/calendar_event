import 'package:calendar_event/features/events/data/datasources/api_datasource.dart';
import 'package:calendar_event/features/events/domain/entities/event.dart';
import 'package:calendar_event/features/events/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final ApiDataSource apiDataSource;

  EventRepositoryImpl({required this.apiDataSource});

  @override
  Future<List<Event>> getEvents() {
    return apiDataSource.getEvents();
  }

  @override
  Future<void> deleteEvent(String id) {
    return apiDataSource.deleteEvent(id);
  }
}
