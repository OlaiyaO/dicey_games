import 'package:flutter/material.dart';
import 'dart:math';

import '../components/dice_roll.dart';
import '../components/drawer.dart';


class SexStyles extends StatefulWidget {
  const SexStyles({super.key});

  @override
  SexStylesState createState() => SexStylesState();
}

class SexStylesState extends State<SexStyles> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const DiceDrawer(),
      // floatingActionButton: FAButton(randomFunction: randFunction,),
      body: SafeArea(
        child: leftImage == null || rightImage == null ? const Text('Roll your Dice') : DiceRoll(randFunction: randFunction,
          diceImageUrl1: 'images/sex_$leftImage.png',
          diceImageUrl2: 'images/pleasure_$rightImage.png',
          openEndDrawer: _openEndDrawer,),
      ),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}