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
      child: Column(
        children: <Widget>[
          Expanded(
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
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      openEndDrawer();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                GestureDetector(
                  child: Image.asset(diceImageUrl2),
                  onTap: () {
                    randFunction;
                  },
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: FAButton(randomFunction: randFunction),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
