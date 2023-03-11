import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/list_tile_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white70,
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
                    tileAvatar: '/romance', description: 'Romance',),
                ListTileModel(
                    tileAvatar: '/foreplay', description: 'Foreplay',),
                ListTileModel(
                    tileAvatar: '/sexStyles', description: 'Sex',),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: OutlinedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text('Quit App'),
              ))
        ],
      ),
    );
  }
}
