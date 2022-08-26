// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_image.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatImageAdapter extends TypeAdapter<CatImage> {
  @override
  final int typeId = 3;

  @override
  CatImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatImage(
      id: fields[4] as String?,
      createdAt: fields[5] as String?,
      tags: (fields[6] as List?)?.cast<String>(),
      url: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CatImage obj) {
    writer
      ..writeByte(4)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.tags)
      ..writeByte(7)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatImage _$CatImageFromJson(Map<String, dynamic> json) => CatImage(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CatImageToJson(CatImage instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'tags': instance.tags,
      'url': instance.url,
    };
