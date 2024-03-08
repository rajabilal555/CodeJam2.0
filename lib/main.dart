import 'package:codejam/app/dashboard/dashboard_screen.dart';
import 'package:codejam/firebase_options.dart';
import 'package:codejam/utilities/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeJam 2.0',
      theme: darkThemeData,
      home: const DashboardScreen(),
    );
  }
}

