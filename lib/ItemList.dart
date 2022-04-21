/*
import 'dart:convert';

import 'package:api_call_offline_storage/data/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './data/item.dart';
import './data/Product.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  late Future<Item> futureData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future:futureData ,
        builder: (context,snapshot){
          if(snapshot.data==null){
            return Container(
              child: const Center(
                child: Text('loading'),
              ),
            );
          }else{
            return  ListView.builder(itemCount: snapshot,itemBuilder: (context,index){
              return ListTile(
                title: Text("$index"),
              );
            });
          }
        },

      ),
    );
  }

  Future<Item> getdata() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {

      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Product.fromJson(jsonDecode(response.body.u);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  @override
  void initState() {
    super.initState();
    futureData=  getdata();
  }
}
*/
