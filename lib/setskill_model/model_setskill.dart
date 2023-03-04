import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class CourseModel {
  @HiveField(0)
  final String username;
  @HiveField(1)
  final String password;

  CourseModel({required this.username, required this.password});
}
