import 'package:flutter/foundation.dart';

@immutable
class Event {
  final String id;
  final String title;
  final String description;
  final DateTime date;

  const Event({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
  });
}
