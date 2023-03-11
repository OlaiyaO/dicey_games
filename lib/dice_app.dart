import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:dicey/dice_type/foreplay.dart';
import 'package:dicey/dice_type/romance.dart';
import 'package:dicey/dice_type/sex_styles.dart';
import 'package:dicey/home.dart';

import 'components/dicey_theme.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: DiceyTheme.light(), initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/romance': (context) => const Romance(),
      '/foreplay': (context) => const Foreplay(),
      '/sex_styles': (context) => const SexStyles(),
    });
  }
}
