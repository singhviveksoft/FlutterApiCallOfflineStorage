import 'package:api_call_offline_storage/ProductDetail.dart';
import 'package:api_call_offline_storage/data/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product.dart';

class Routing {
  static const String product = '/';
  static const String productdetail = '/productdetail';



  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;
    if(settings.arguments!=null){
      valuePassed=settings.arguments  as  Map<String,dynamic>;
    }

    switch (settings.name) {
      case product:
        return MaterialPageRoute(
          builder: (context) {
            return PostsPage();
          },
        );


      case productdetail:
        return MaterialPageRoute(
          builder: (context) {
            return ProductDetailScreen.c(post: valuePassed['kk'],);
          },
        );

      default:
        throw 'no screen';
    }
  }
}
