import 'package:cat_facts_randomizer/facts_page/domain/network/cat_info.dart';
import 'package:cat_facts_randomizer/src/res/app_colors.dart';
import 'package:cat_facts_randomizer/src/res/text_styles.dart';
import 'package:cat_facts_randomizer/src/res/time_util.dart';
import 'package:cat_facts_randomizer/src/widgets/bottom_bar_widgets/bottom_bar_history.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CatInfo> catsInfo = Hive.box<CatInfo>('catInfo').values.toList();
    return Scaffold(
      backgroundColor: AppColors.secondDark,
      body: Center(
        child: ListView.builder(
          itemCount: catsInfo.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: AppColors.white,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      TimeUtil.getFullDate(catsInfo[index].factDate),
                      style: TextStyles.forDate,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      catsInfo[index].catFact.fact!,
                      style: TextStyles.forFacts,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomBarHistory(),
    );
  }
}
