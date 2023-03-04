import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../database_flutter/db_function.dart';
import '../models/model_mern/data_model2_mern.dart';
import '../models/model_mern/data_model_mern.dart';

ValueNotifier<List<CourseMern>> courselistNotifiermern = ValueNotifier([]);
Future<void> addcoursemern(CourseMern value) async {
  final coursedetailsmernDB =
      await Hive.openBox<CourseMern>('coursedetailsmern');
  final courseid = await coursedetailsmernDB.add(value);
  value.id = courseid;
  courselistNotifiermern.notifyListeners();
  courselistNotifiermern.value.add(value);
}

Future<void> getallcoursemern() async {
  final coursedetailsmernDB =
      await Hive.openBox<CourseMern>('coursedetailsmern');
  courselistNotifiermern.value.clear();
  courselistNotifiermern.value.addAll(coursedetailsmernDB.values);
  courselistNotifiermern.notifyListeners();
}

ValueNotifier<List<SectionMern>> sectionlistNotifiermern = ValueNotifier([]);
Future<void> addsectionsmern(SectionMern value) async {
  final sectionsmernDB = await Hive.openBox<SectionMern>('sectionsmern');
  final id = await sectionsmernDB.add(value);
  value.id = id;
  sectionlistNotifiermern.notifyListeners();
  sectionlistNotifiermern.value.add(value);
  print(value.sectionsmern);
}

Future<void> getallsectionsmern() async {
  final sectionsmernDB = await Hive.openBox<SectionMern>('sectionsmern');
  sectionlistNotifiermern.value.clear();
  sectionlistNotifiermern.value.addAll(sectionsmernDB.values);
  sectionlistNotifiermern.notifyListeners();
}

Future<void> deletesectionMern(int id) async {
  final sectionsmernDB = await Hive.openBox<SectionMern>('sectionsmern');
  await sectionsmernDB.deleteAt(id);
  getallsectionsmern();
}
