import 'package:hive/hive.dart';
part 'mern_overview_model.g.dart';

@HiveType(typeId: 4)
class MernOverviewModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String totaltime;
  @HiveField(2)
  String whatyouwilllearn;
  MernOverviewModel({required this.totaltime, required this.whatyouwilllearn});
}
