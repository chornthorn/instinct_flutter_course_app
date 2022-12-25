import 'package:flutter/material.dart';
import 'package:flutter_exercise_app/views/dashboard_page.dart';
import 'package:flutter_exercise_app/views/home_page.dart';

// set of style

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0,
        )
      ),
      home: DashboardPage(),
      // home: HomePage(),
    );
  }
}
