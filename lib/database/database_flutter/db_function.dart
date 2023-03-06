import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:set_skill/database/models/overview_model/flutter_overview_model.dart';
import '../models/fluttermodel/data_model.dart';

ValueNotifier<List<CourseFlutter>> courselistNotifier = ValueNotifier([]);
Future<void> addcourseflutter(CourseFlutter value) async {
  final coursedetailsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  final courseid = await coursedetailsDB.add(value);
  value.id = courseid;
  courselistNotifier.notifyListeners();
  courselistNotifier.value.add(value);
}

Future<void> getallcourseFlutter() async {
  final coursedetailsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  courselistNotifier.value.clear();
  courselistNotifier.value.addAll(coursedetailsDB.values);
  courselistNotifier.notifyListeners();
}

Future<void> deletesection(int id) async {
  final sectionsDB = await Hive.openBox<CourseFlutter>('coursedetails');
  await sectionsDB.deleteAt(id);
  getallcourseFlutter();
}

ValueNotifier<List<FlutterOverviewModel>> overviewlistFlutterNotifier =
    ValueNotifier([]);
Future<void> addoverviewflutter(FlutterOverviewModel value) async {
  final overviewDB =
      await Hive.openBox<FlutterOverviewModel>('overviewFlutter');
  final overviewid = await overviewDB.add(value);
  value.id = overviewid;
  overviewlistFlutterNotifier.notifyListeners();
  overviewlistFlutterNotifier.value.add(value);
}
