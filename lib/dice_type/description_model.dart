import 'package:flutter/material.dart';


class DescriptionScreen extends StatelessWidget {

  final String heading;
  final String description;
  final Function callback;

  const DescriptionScreen({Key? key, required this.heading, required this.description, required this.callback,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Expanded(
          flex: 1,
          child: Container(
            color: Theme.of(context).copyWith().listTileTheme.tileColor,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Theme.of(context).copyWith().listTileTheme.tileColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(heading),
                Text(description),
                OutlinedButton(
                  onPressed: () {
                    callback();
                    },
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.all(8),
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Theme.of(context).copyWith().appBarTheme.foregroundColor,
                    ),
                  ),
                  child: const Text('Continue'),

                ),

            ],),
          ),),
      ],
    );
  }
}
