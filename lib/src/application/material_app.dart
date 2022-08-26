import 'package:cat_facts_randomizer/src/res/pages_navigation.dart';
import 'package:flutter/material.dart';
import '../../history_page/presentation/pages/history_page.dart';
import '../../facts_page/presentation/pages/facts_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        PagesNavigation.factsPage: (context) => const FactsPage(),
        PagesNavigation.historyPage: (context) => const HistoryPage(),
      },
    );
  }
}
