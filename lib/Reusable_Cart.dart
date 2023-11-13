import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget Child;
  const ReusableCard({required this.colour, required this.Child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Child,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}