import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:storeapp/screens/animated_splash_screen.dart';
import 'package:storeapp/screens/cart_screen.dart';
import 'package:storeapp/screens/home_screen.dart';
import 'package:storeapp/screens/item_details.dart';
import 'package:storeapp/screens/update_product_screen.dart';
import 'package:storeapp/services/update_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AnimatedSplash.id :(context) => AnimatedSplash(),
        HomeScreen.id : (context) => HomeScreen(),
        UpdateProductScreen.id : (context)=> UpdateProductScreen(),
        CartScreen.id : (context)=> CartScreen(),
        ItemDetails.id : (context)=> ItemDetails(),
      },
      initialRoute: AnimatedSplash.id,
      home: AnimatedSplash(),
    );
  }
}
