import 'package:hive/hive.dart';
part 'data_model2.g.dart';

@HiveType(typeId: 2)
class Section {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String sections;
  Section({required this.sections});
}
