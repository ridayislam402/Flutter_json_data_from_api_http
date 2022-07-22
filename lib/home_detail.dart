import 'package:flutter/material.dart';
import 'package:json_data_from_api_http/model.dart';

class HomeDetail extends StatelessWidget {
  //const HomeDetail({Key? key,}) : super(key: key);
  final Item item;

  const HomeDetail({super.key, required this.item}):assert(item!=null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text(item.title),
        ),
      ),
    );
  }
}
