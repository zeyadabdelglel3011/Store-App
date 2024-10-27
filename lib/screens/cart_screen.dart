import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String id = 'cartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Shopping Cart',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,

          ),
        ),

    ),


    );

  }
}
