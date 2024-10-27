import 'dart:convert';

import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;

import '../helper/api.dart';

class CategoriesService
{

  //static Uri url = Uri.parse('https://fakestoreapi.com/products/category/$categoryName');
  Future<List<ProductModel>> getCategoriesProducts({required String categoryName}) async{



    List<dynamic> data  = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');




     List<ProductModel> productsList = [];
     for( int i = 0 ; i<data.length ; i++)
     {
       productsList.add(ProductModel.fromJson(data[i]),);

     }

     return productsList;
   }




}