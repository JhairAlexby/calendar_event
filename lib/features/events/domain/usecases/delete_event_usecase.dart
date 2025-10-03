import 'package:calendar_event/features/events/domain/repositories/event_repository.dart';

class DeleteEventUseCase {
  final EventRepository repository;

  DeleteEventUseCase({required this.repository});

  Future<void> call(String id) {
    return repository.deleteEvent(id);
  }
}
