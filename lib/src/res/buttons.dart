import 'package:cat_facts_randomizer/src/res/text_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final double width;
  final String info;
  final Color? color;
  final void Function() onTap;

  const MainButton({
    Key? key,
    required this.width,
    required this.onTap,
    required this.info,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.white,
              width: 1.0,
            )),
        width: width,
        height: 60,
        child: Center(
          child: Text(
            info,
            style: TextStyles.forButtons,
          ),
        ),
      ),
    );
  }
}

class SecondButton extends StatelessWidget {
  final double width;
  final Color? color;
  final IconData icon;
  final void Function() onTap;

  const SecondButton({
    Key? key,
    required this.width,
    required this.onTap,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.white,
              width: 1.0,
            )),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
