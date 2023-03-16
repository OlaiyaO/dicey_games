import 'package:dicey/components/dicey_theme.dart';
import 'package:flutter/material.dart';
import 'package:dicey/components/floating_action_button.dart';

class DiceRoll extends StatelessWidget {
  final String diceImageUrl1;
  final String diceImageUrl2;
  final VoidCallback randFunction;
  final Function openEndDrawer;

  const DiceRoll(
      {Key? key,
      required this.randFunction,
      required this.diceImageUrl1,
      required this.diceImageUrl2,
      required this.openEndDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0xffff00ff),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: randFunction,
                      child: Image.asset(diceImageUrl1),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: DiceyTheme.light().primaryColor,
                          size: 32,
                        ),
                        onPressed: () {
                          openEndDrawer();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    GestureDetector(
                      child: Image.asset(diceImageUrl2),
                      onTap: () {
                        randFunction;
                      },
                    ),
                    Positioned(
                      bottom: 32,
                      right: 32,
                      child: FAButton(randomFunction: randFunction),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
