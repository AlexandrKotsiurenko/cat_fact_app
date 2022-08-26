// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatInfoAdapter extends TypeAdapter<CatInfo> {
  @override
  final int typeId = 1;

  @override
  CatInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatInfo(
      catFact: fields[0] as CatFact,
      catImage: fields[1] as CatImage,
      factDate: fields[10] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, CatInfo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.catFact)
      ..writeByte(1)
      ..write(obj.catImage)
      ..writeByte(10)
      ..write(obj.factDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
