import 'package:flutter/material.dart';

class FAButton extends StatelessWidget {
  final Function randomFunction;
  const FAButton({Key? key, required this.randomFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(elevation: 3,
      onPressed: () {
        randomFunction();
      }, label: Row(
      children: const [
        Icon(Icons.refresh),
        Text('Roll'),
      ],
    ),
    );
  }
}

