import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Layout/Screen_Layout.dart';
import 'package:portfolio/screens/Project_Screen.dart';

void main() {
  if (kIsWeb) {}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Arin Aggarwal',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreenLayout(page: 0));
  }
}
