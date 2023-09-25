import 'dart:math';

import 'package:flutter/material.dart';

//local
import 'package:dice_roll/widgets/styled_text.dart';
import 'package:dice_roll/widgets/gradient_container.dart';

final randomizer = Random();

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var diceImage = 1;

  void onDiceRoll() {
    setState(() {
      diceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        colors: [
          Colors.purple,
          Colors.pink[900]!,
        ],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/images/dice-$diceImage.png',
                width: 200,
              ),
              TextButton(
                onPressed: onDiceRoll,
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                child: const StyledText(
                  text: "Roll",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
