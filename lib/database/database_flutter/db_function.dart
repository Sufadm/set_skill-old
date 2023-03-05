import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import '../models/fluttermodel/data_model.dart';

ValueNotifier<List<CourseFlutter>> courselistNotifier = ValueNotifier([]);
Future<void> addcourseflutter(CourseFlutter value) async {
  final coursedetailsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  final courseid = await coursedetailsDB.add(value);
  value.id = courseid;
  courselistNotifier.notifyListeners();
  courselistNotifier.value.add(value);
  print(value.coursename);
  print(value.blog);
}

Future<void> getallcourseFlutter() async {
  final coursedetailsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  courselistNotifier.value.clear();
  courselistNotifier.value.addAll(coursedetailsDB.values);
  courselistNotifier.notifyListeners();
}

// ValueNotifier<List<Section>> sectionlistNotifier = ValueNotifier([]);
// Future<void> addsections(Section value) async {
//   final sectionsDB = await Hive.openBox<Section>('sections');
//   final id = await sectionsDB.add(value);
//   value.id = id;
//   sectionlistNotifier.notifyListeners();
//   sectionlistNotifier.value.add(value);
//   print(value.sections);
// }

// Future<void> getallsections() async {
//   final sectionsDB = await Hive.openBox<Section>('sections');
//   sectionlistNotifier.value.clear();
//   sectionlistNotifier.value.addAll(sectionsDB.values);
//   sectionlistNotifier.notifyListeners();
// }

Future<void> deletesection(int id) async {
  final sectionsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  await sectionsDB.deleteAt(id);
  getallcourseFlutter();
}
