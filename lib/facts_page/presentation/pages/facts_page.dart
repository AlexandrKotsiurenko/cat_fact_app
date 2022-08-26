import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_bloc.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_events.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_state.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/widgets/fact_bar.dart';
import 'package:cat_facts_randomizer/src/res/app_colors.dart';
import 'package:cat_facts_randomizer/src/widgets/bottom_bar_widgets/bottom_bar_facts.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/widgets/image_bar.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/widgets/question_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactsPage extends StatelessWidget {
  const FactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatBloc>(
      create: (context) => CatBloc(CatState())..add(GetCatDataEvent()),
      child: Scaffold(
        backgroundColor: AppColors.secondDark,
        body: BlocBuilder<CatBloc, CatState>(
          builder: (context, state) => Column(
            children: const [
              ImageBar(),
              QuestionBar(),
              FactBar(),
            ],
          ),
        ),
        bottomNavigationBar: const BottomBarFacts(),
      ),
    );
  }
}
