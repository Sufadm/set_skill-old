import 'package:hive/hive.dart';
part 'flutter_overview_model.g.dart';

@HiveType(typeId: 3)
class FlutterOverviewModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String durationofcourse;
  @HiveField(2)
  String whatyouwillleran;
  FlutterOverviewModel(
      {required this.durationofcourse,
      required this.whatyouwillleran,
      this.id});
}
