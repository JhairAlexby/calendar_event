import 'package:calendar_event/features/events/domain/entities/event.dart';

class EventModel extends Event {
  const EventModel({
    required String id,
    required String title,
    required String description,
    required DateTime date,
  }) : super(id: id, title: title, description: description, date: date);

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }
}
