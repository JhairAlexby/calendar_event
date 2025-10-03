import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calendar_event/features/auth/presentation/pages/login_page.dart';
import 'package:calendar_event/features/auth/presentation/pages/register_page.dart';
import 'package:calendar_event/features/auth/presentation/providers/auth_provider.dart';
import 'package:calendar_event/features/events/presentation/pages/events_page.dart';
import 'package:calendar_event/features/events/presentation/providers/event_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => EventProvider()),
      ],
      child: MaterialApp(
        title: 'Event App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/events': (context) => const EventsPage(),
        },
      ),
    );
  }
}
