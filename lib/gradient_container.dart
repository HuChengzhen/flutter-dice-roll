import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const begin = Alignment.topLeft;
const end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = [
          const Color.fromARGB(255, 88, 10, 246),
          const Color.fromARGB(255, 30, 2, 66),
        ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
