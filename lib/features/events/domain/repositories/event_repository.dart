import 'package:calendar_event/features/events/domain/entities/event.dart';

abstract class EventRepository {
  Future<List<Event>> getEvents();
  Future<void> deleteEvent(String id);
}
