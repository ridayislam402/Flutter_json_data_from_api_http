import 'package:http/http.dart' as http;

import 'model.dart';


class RemoteService{
  Future<List<Item>?> getPosts() async{
    var client=http.Client();

    var uri=Uri.parse('https://jsonplaceholder.typicode.com/posts');
     var response=await client.get(uri);
     if(response.statusCode==200){
       var json=response.body;
       return welcomeFromJson(json);
     }
  }

}