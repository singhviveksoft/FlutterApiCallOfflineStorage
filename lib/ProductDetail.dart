import 'package:api_call_offline_storage/data/PostClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
final  Post post;
  const ProductDetailScreen({Key? key, required this.post}) : super(key: key);

  ProductDetailScreen.c({required this.post});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    pastvalue();
    return Scaffold(

      appBar: AppBar(
        title: const Text('ProductDetail'),
      ),

    );
  }
  void pastvalue(){
    print(widget.post);
  }
}
