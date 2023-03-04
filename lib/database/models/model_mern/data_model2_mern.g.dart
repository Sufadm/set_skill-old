// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model2_mern.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SectionMernAdapter extends TypeAdapter<SectionMern> {
  @override
  final int typeId = 4;

  @override
  SectionMern read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SectionMern(
      sectionsmern: fields[1] as String,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, SectionMern obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.sectionsmern);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SectionMernAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
