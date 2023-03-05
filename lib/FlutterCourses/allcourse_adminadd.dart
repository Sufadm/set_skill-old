import 'package:flutter/material.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';

class FlutterAllCourse extends StatelessWidget {
  final String coursename;
  final String logolink;
  final String youtubeid;
  final String blog;
  final String totaltime;
  final int index;
  const FlutterAllCourse(
      {super.key,
      required this.coursename,
      required this.logolink,
      required this.youtubeid,
      required this.blog,
      required this.totaltime,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter one Course'),
      ),
      body: Column(
        children: [
          Text(coursename),
        ],
      ),
    );
  }
}
