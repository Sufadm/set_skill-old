// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mern_overview_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MernOverviewModelAdapter extends TypeAdapter<MernOverviewModel> {
  @override
  final int typeId = 4;

  @override
  MernOverviewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MernOverviewModel(
      totaltime: fields[1] as String,
      whatyouwilllearn: fields[2] as String,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, MernOverviewModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.totaltime)
      ..writeByte(2)
      ..write(obj.whatyouwilllearn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MernOverviewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
