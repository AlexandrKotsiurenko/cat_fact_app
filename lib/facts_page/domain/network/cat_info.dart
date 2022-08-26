import 'package:cat_facts_randomizer/facts_page/domain/network/images/cat_image.dart';
import 'package:hive/hive.dart';
import 'facts/cat_fact.dart';

part 'cat_info.g.dart';

@HiveType(typeId: 1)
class CatInfo {
  @HiveField(0)
  CatFact catFact;
  @HiveField(1)
  CatImage catImage;
  @HiveField(10)
  DateTime factDate;

  CatInfo({
    required this.catFact,
    required this.catImage,
    required this.factDate,
  });
}
