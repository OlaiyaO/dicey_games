import 'package:flutter/material.dart';
import 'dart:math';

import '../components/dice_roll.dart';
import '../components/drawer.dart';

class Foreplay extends StatefulWidget {
  final String foreplayUrl2 = '';

  const Foreplay({super.key});

  @override
  ForeplayState createState() => ForeplayState();
}

class ForeplayState extends State<Foreplay> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int? leftImage;
  int? rightImage;

  void randFunction() {
    setState(() {
      leftImage = Random().nextInt(6) + 1;
      rightImage = Random().nextInt(6) + 1;
    });
  }

  void resetApp() {
    leftImage = null;
    rightImage = null;
  }

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const DiceDrawer(),
      // floatingActionButton: FAButton(randomFunction: randFunction,),
      body: SafeArea(
        child: DiceRoll(
          randFunction: randFunction,
          diceImageUrl1: 'images/actions2$leftImage.png',
          diceImageUrl2: 'images/bodypart2$rightImage.png',
          openEndDrawer: _openEndDrawer,
        ),
      ),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
