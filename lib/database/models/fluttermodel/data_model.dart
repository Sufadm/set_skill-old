import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class CourseFlutter {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String coursename;
  @HiveField(2)
  String logolink;
  @HiveField(3)
  String youtubevideoid;
  @HiveField(4)
  String blog;
  @HiveField(5)
  String totaltime;

  CourseFlutter({
    required this.coursename,
    required this.logolink,
    required this.youtubevideoid,
    required this.blog,
    required this.totaltime,
  });
}
