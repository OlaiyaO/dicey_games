import 'package:flutter/material.dart';
import 'package:dicey/components/drawer.dart';
import 'dart:math';

import '../components/dice_roll.dart';
import 'description_model.dart';

class Romance extends StatefulWidget {

  static const String romanceRoute = '/romance';
  final String romanceHeading = 'ROMANCE';

  const Romance({super.key});

  @override
  RomanceState createState() => RomanceState();
}

class RomanceState extends State<Romance> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  int? leftImage;
  int? rightImage;

  void rollDice() {
    setState(() {
      leftImage = Random().nextInt(6) + 1;
      rightImage = Random().nextInt(6) + 1;
    });
  }

  void resetApp() {
    leftImage = null;
    rightImage = null;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const DiceDrawer(),
      // floatingActionButton: FAButton(randomFunction: randFunction,),
      body: SafeArea(
          child: leftImage == null || rightImage == null
              ? DescriptionScreen(
                  heading: widget.romanceHeading,
                  description:
                      'This game is best for romantic partners... Explore your romantic fantasies with your spouse, \r To play; \n 1. lace a stake(to remit cash or to drink alcohol). \n 2. Roll the dice and perform the described dice face action. \n 3. If either one of the players won\'t follow the rules, they must drink or pay',
                  callback: rollDice)
              : DiceRoll(
                  randFunction: rollDice,
                  diceImageUrl1: 'images/action$leftImage.png',
                  diceImageUrl2: 'images/bodypart$rightImage.png',
                  openEndDrawer: _openEndDrawer,
                )),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
