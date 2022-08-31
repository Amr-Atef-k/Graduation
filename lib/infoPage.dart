import 'package:flutter/material.dart';
import 'package:gradution_project/product_model.dart';

class infoPage extends StatelessWidget {
  final ProductModel productModel ;
  const infoPage({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.network(productModel.image!),
            Text('Name:${productModel.name!}',style: TextStyle(fontSize: 25),),
            Text('Category:${productModel.category!}',style: TextStyle(fontSize: 25)),
            Text('Publisher:${productModel.publisher!}',style: TextStyle(fontSize: 25)),
            Text('Date:${productModel.date!}',style: TextStyle(fontSize: 25)),
            Text('Price:${productModel.price!}',style: TextStyle(fontSize: 25)),
            ElevatedButton(onPressed: (){}, child: Text('Buy'),),
          ],
        ),
      ),
    );
  }
}
