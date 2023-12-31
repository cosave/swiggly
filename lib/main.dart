import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggly/sync_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SyncService.getService();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
