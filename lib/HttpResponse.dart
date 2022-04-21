import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


import 'data/PostClass.dart';

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  List<Post> posts=[];
   getPosts() async {
    Response res = await http.get(Uri.parse(postsURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

       posts =
           body
          .map(
            (dynamic item) => Post.fromJson(item),
      )
          .toList();

      return posts;
    }
    else {
      throw "Unable to retrieve posts.";
    }
  }
}