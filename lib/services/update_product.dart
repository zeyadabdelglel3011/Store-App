import 'package:storeapp/models/product_model.dart';

import '../helper/api.dart';

class UpdateProductServices {
  Future<ProductModel> updateProduct({
    required String title ,
    required String price ,
    required String image ,
    required int id ,
    required String desc ,
    required String category})
  async{
    print('product id = $id');
    Map<String ,dynamic> data = await Api().put(url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image' : image ,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}