import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json_data_from_api_http/listview_style.dart';
import 'package:json_data_from_api_http/remote_service.dart';
import 'dart:convert';

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 var posts;
  var isloaded=false;
  @override
  void initState() {
    super.initState();
    loadData();
  }


  loadData() async{
    var response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var catalogJson=response.body;
    posts=welcomeFromJson(catalogJson);

    //posts= await RemoteService().getPosts();
    if(posts!=null){
      setState((){
        isloaded=true;
        print(isloaded);
      });


    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      //(posts!=null && posts.isNotEmpty)?
      Visibility(
        visible: isloaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
          return
              //Container(child: Text(posts![index].title));

             // Text(posts![index].title);
            ListStyleModel(item: posts[index]);
        }

        ),
        replacement: Center(child: CircularProgressIndicator(),),
      )
          //:Center(child: CircularProgressIndicator(),),


    );
  }
}
