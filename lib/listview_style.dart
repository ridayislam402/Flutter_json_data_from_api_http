import 'package:flutter/material.dart';

import 'model.dart';

class ListStyleModel extends StatelessWidget {
  //const ListStyleModel({Key? key}) : super(key: key);
  final Item item;

  const ListStyleModel({super.key, required this.item}):assert(item!=null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.body),
        
      ),
    );
  }
}
