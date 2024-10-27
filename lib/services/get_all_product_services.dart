import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsServices {
  static Uri url =Uri.parse( 'https://fakestoreapi.com/products');


  Future<List<ProductModel>> getAllProducts()
  async{


    var response = await Api().get(url: ('https://fakestoreapi.com/products'));


      List<ProductModel> productsList = [];
      for( int i = 0 ; i<response.length ; i++)
      {
        productsList.add(ProductModel.fromJson(response[i]),);
      }
      return productsList;
    }
  }


