import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.icon,this.onpressed}) : super(key: key);
  final IconData icon ;
  final VoidCallback? onpressed ;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onpressed,
      child: FaIcon(
        icon,
        color: Colors.white,
      ),
    );
  }
}




