// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note-model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteMoldelAdapter extends TypeAdapter<NoteMoldel> {
  @override
  final int typeId = 0;

  @override
  NoteMoldel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteMoldel(
      titel: fields[0] as String,
      supTitel: fields[1] as String,
      date: fields[2] as String,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NoteMoldel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.titel)
      ..writeByte(1)
      ..write(obj.supTitel)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteMoldelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
