import 'package:flutter/material.dart';
import '../../res/buttons.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class BottomBarHistory extends StatelessWidget {
  final String _url =
      'https://www.linkedin.com/in/alexandr-kotsiurenko-495973229/';

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainButton(
            width: 260,
            onTap: _launchUrl,
            info: 'by Alexandr Kotsiurenko',
          ),
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

  Future<void> _launchUrl() async {
    if (!await url.launch(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
