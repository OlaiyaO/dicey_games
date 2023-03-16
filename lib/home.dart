import 'package:dicey/components/dicey_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/list_tile_model.dart';
import 'dice_type/romance.dart';
import 'dice_type/foreplay.dart';
import 'dice_type/sex_styles.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Center(
          child: Text('Couple\'s Games'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 9,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                ListTileModel(
                  tileAvatar: Romance.romanceRoute,
                  description: 'Romance',
                ),
                ListTileModel(
                  tileAvatar: Foreplay.foreplayRoute,
                  description: 'Foreplay',
                ),
                ListTileModel(
                  tileAvatar: SexStyles.sexStylesRoute,
                  description: 'Sex',
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: OutlinedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(16.0),
                ),
                foregroundColor:
                MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
              ),
              child: Text('Quit App',
              style: DiceyTheme.lightTextTheme.titleLarge),
            ),
          )
        ],
      ),
    );
  }
}
