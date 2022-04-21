/*


import 'package:api_call_offline_storage/ItemList.dart';
import 'package:flutter/material.dart';
import 'ItemList.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:
    Scaffold(
        appBar: AppBar(title: Text('Api call',)),
        body: ItemList()),
  ));
}



*/


import 'package:api_call_offline_storage/Routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP',
      debugShowCheckedModeBanner: false,
      initialRoute: Routing.product,
onGenerateRoute: Routing.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PostsPage(),
    );
  }
}
