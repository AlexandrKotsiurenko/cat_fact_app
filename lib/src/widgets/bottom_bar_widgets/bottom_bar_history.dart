import 'package:flutter/material.dart';
import '../../res/buttons.dart';


class BottomBarHistory extends StatelessWidget {
  const BottomBarHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SecondButton(
            width: 60,
            onTap: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back_ios_new,
          )
        ],
      ),
    );
  }
}
