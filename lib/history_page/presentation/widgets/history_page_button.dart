import 'package:flutter/material.dart';
import '../../../src/res/pages_navigation.dart';

class HistoryPageButton extends StatelessWidget {
  const HistoryPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PagesNavigation.historyPage);
      },
      child: const Icon(
        Icons.history,
        size: 25,
      ),
    );
  }
}
