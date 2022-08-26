import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_bloc.dart';
import 'package:cat_facts_randomizer/facts_page/presentation/bloc/cat_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../res/buttons.dart';
import '../../res/pages_navigation.dart';

class BottomBarFacts extends StatelessWidget {
  const BottomBarFacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Builder(
            builder: (ctx) => MainButton(
              width: 260,
              info: 'ANOTHER FACT',
              onTap: () {
                ctx.read<CatBloc>().add(GetCatDataEvent());
              },
            ),
          ),
          SecondButton(
            width: 60,
            onTap: () {
              Navigator.pushNamed(context, PagesNavigation.historyPage);
            },
            icon: Icons.history,
          )
        ],
      ),
    );
  }
}
