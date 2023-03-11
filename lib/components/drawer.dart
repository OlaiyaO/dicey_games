import 'package:flutter/material.dart';

import 'list_tile_model.dart';

class DiceDrawer extends StatelessWidget {
  const DiceDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTileModel(
                tileAvatar: '/romance', description: 'Romance',),
            ListTileModel(
                tileAvatar: '/foreplay', description: 'Foreplay',),
            ListTileModel(
                tileAvatar: '/sexStyles', description: 'Sex',),
          ],
        ),
      ),
    );
  }
}
