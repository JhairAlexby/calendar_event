import 'package:calendar_event/features/events/domain/entities/event.dart';
import 'package:calendar_event/features/events/domain/repositories/event_repository.dart';

class GetEventsUseCase {
  final EventRepository repository;

  GetEventsUseCase({required this.repository});

  Future<List<Event>> call() {
    return repository.getEvents();
  }
}
