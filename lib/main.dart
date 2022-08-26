import 'package:cat_facts_randomizer/src/application/material_app.dart';
import 'package:cat_facts_randomizer/src/res/consts.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'facts_page/domain/network/cat_info.dart';
import 'facts_page/domain/network/facts/cat_fact.dart';
import 'facts_page/domain/network/images/cat_image.dart';




void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<CatFact>(CatFactAdapter());
  Hive.registerAdapter<CatImage>(CatImageAdapter());
  Hive.registerAdapter<CatInfo>(CatInfoAdapter());
  await Hive.openBox<CatInfo>(HiveBoxNames.catInfo);
  runApp(const MyApp());
}
