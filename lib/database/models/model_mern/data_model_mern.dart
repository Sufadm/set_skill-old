import 'package:hive/hive.dart';
part 'data_model_mern.g.dart';

@HiveType(typeId: 2)
class CourseMern {
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
  String sectionsmern;

  CourseMern(
      {required this.coursename,
      required this.logolink,
      required this.youtubevideoid,
      required this.blog,
      required this.sectionsmern,
      this.id});
}
