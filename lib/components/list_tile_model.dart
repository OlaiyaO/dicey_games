import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListTileModel extends StatelessWidget {

  final String tileAvatar;
  final String description;


  const ListTileModel({Key? key, required this.tileAvatar, required this.description,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, tileAvatar);
        },
        leading: CircleAvatar(
          foregroundImage: AssetImage('images$tileAvatar.png'),
        ),
        title: Text(description),
      ),
    );
  }
}
