// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_overview_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FlutterOverviewModelAdapter extends TypeAdapter<FlutterOverviewModel> {
  @override
  final int typeId = 3;

  @override
  FlutterOverviewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FlutterOverviewModel(
      durationofcourse: fields[1] as String,
      whatyouwillleran: fields[2] as String,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FlutterOverviewModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.durationofcourse)
      ..writeByte(2)
      ..write(obj.whatyouwillleran);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlutterOverviewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
