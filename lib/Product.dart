import 'dart:ui';

import 'package:api_call_offline_storage/Routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HttpResponse.dart';
import 'data/PostClass.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final HttpService httpService = HttpService();
  List<Post> postList = [];

  @override
  void initState() {
    httpService.getPosts().then((value) {
      setState(() {
        postList = value;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: postList.length > 0
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: _GridBuilder(),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }

  Widget _GridBuilder() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
        ),
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return Container(
           /* width: 60.0,
            height: 50.0,*/
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.blueAccent,
            ),
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, Routing.productdetail,arguments: {
                  'kk':postList[index],

                });
              },
              title: Center(
                child: Text(
                  "${postList[index].id}",
                  style: TextStyle(),
                ),
              ),
            ),
          );
        });
  }

  Widget _GridCount() {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      mainAxisSpacing: 20.0,
      crossAxisSpacing: 20.0,

      children: List.generate(postList.length, (index) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.blueAccent,
          ),
          child: ListTile(
            title: Center(
              child: Text(
                "${postList[index].id}",
                style: TextStyle(),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _sliverList(){
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate((context,index){
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(

              child: Container(
                height: 100.0,
                  child: const Center(child: Text('hhhhhhhhhhhh'))),
            ),
          );
    },childCount: 100
        ))],
    );
  }


  Widget _sliverGrid(){
    return CustomScrollView(
      slivers: [
        SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            delegate: SliverChildBuilderDelegate((context,index){
          return  Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(

              child: Container(
                  height: 100.0,
                  child: Center(child: Text('hhhhhhhhhhhh'))),
            ),
          );
        },))],
    );
  }

}
