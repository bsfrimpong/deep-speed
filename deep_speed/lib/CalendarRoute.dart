import 'package:deep_speed/pages/calendar.dart';
import 'package:flutter/material.dart';



class CalendarRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Calendar(),
    );
  }
}