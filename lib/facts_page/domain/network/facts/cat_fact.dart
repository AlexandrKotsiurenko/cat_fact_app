import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat_fact.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class CatFact {
  @HiveField(2)
  String? fact;
  @HiveField(3)
  int? length;

  CatFact({this.fact, this.length});

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);

  Map<String, dynamic> toJson() => _$CatFactToJson(this);
}
