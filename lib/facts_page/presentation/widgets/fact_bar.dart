import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_bloc.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_state.dart';
import 'package:cat_facts_randomizer/src/res/text_styles.dart';
import 'package:cat_facts_randomizer/src/res/time_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactBar extends StatelessWidget {
  const FactBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatBloc, CatState>(
      builder: (context, state) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: state.catInfo == null
            ? Center(child: const CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      TimeUtil.getFullDate(state.catInfo!.factDate),
                      style: TextStyles.forDate,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      state.catInfo!.catFact.fact!,
                      style: TextStyles.forFacts,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
