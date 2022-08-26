import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat_image.g.dart';


@JsonSerializable()
@HiveType(typeId: 3)
class CatImage {
  @HiveField(4)
  String? id;
  @HiveField(5)
  String? createdAt;
  @HiveField(6)
  List<String>? tags;
  @HiveField(7)
  String? url;

  CatImage({this.id, this.createdAt, this.tags, this.url});

  factory CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);
  Map<String, dynamic> toJson() => _$CatImageToJson(this);
}