import 'package:hive/hive.dart';
part 'data_model2_mern.g.dart';

@HiveType(typeId: 4)
class SectionMern {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String sectionsmern;
  SectionMern({required this.sectionsmern});
}
