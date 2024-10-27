
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helper/api.dart';
class AllCategoriesServices {

  static Uri url = Uri.parse('https://fakestoreapi.com/products/categories');

 Future <List<dynamic>> getAllCategories()
 async{
   List<dynamic> data  = await Api().get(url: 'https://fakestoreapi.com/products/categories');
     return data;
   }

}