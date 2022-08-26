import 'package:cat_facts_randomizer/src/res/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../src/res/text_styles.dart';

class QuestionBar extends StatelessWidget {
  static const String _dividerText = "DID YOU KNOW WHAT?";

  const QuestionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      decoration: const BoxDecoration(
        color: AppColors.mainRed,
      ),
      child: const Center(
        child: Text(
          _dividerText,
          style: TextStyles.forButtons,
        ),
      ),
    );
  }
}
