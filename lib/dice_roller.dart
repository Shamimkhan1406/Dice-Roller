import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImages = 'assets/images/dice_5.png';
  final randomizer = Random();
  void rollDice()
  {
    var diceRoll = randomizer.nextInt(6)+1;
    setState(() {
      activeDiceImages = 'assets/images/dice_$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
          activeDiceImages,
          width: 150,
        ),
      TextButton(onPressed: rollDice,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(top: 75),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 30,
          )
        ),
        child: const Text('Roll Dice'),),
      ],
    );
  }
}