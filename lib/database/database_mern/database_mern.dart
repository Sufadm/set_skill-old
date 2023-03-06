import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

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

Future<void> deletesectionMern(int id) async {
  final sectionsmernDB = await Hive.openBox<CourseMern>('coursedetailsmern');
  await sectionsmernDB.deleteAt(id);
  getallcoursemern();
}
