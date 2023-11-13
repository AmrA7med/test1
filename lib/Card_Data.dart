import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardData extends StatelessWidget {
  final IconData Icon;
  final String? text;
  const CardData({required this.Icon,  this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(Icon, color: Colors.white, size: 45),
        SizedBox(
          height: 10,
        ),
        Text(
          text!,
          style: TextStyle(color: Color(0xff8D8E98), fontSize: 25),
        ),
      ],
    );
  }
}
