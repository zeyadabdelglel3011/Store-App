import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/components/custom_btn.dart';
import 'package:storeapp/components/custom_text_field.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product.dart';

class UpdateProductScreen extends StatefulWidget {
   UpdateProductScreen({super.key});
static String id = 'updateProduct';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
String? productName , desc , image ;

String? price ;
bool isLoading  = false;

  @override
  Widget build(BuildContext context) {

    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel ;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
              'Update Product',
          style: TextStyle(
            fontSize: 22,
          ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(

              children: [
            SizedBox(height: 100,),
                CustomTextField(
                  hintText: 'Product Name',
                  onChanged: (data){
                    productName = data ;
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                CustomTextField(
                  hintText: 'Description',
                  onChanged: (data){
                    desc = data ;
                  },
                ),

                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  hintText: 'Price',
                  onChanged: (data){
                    price = data;

                  },

                ),

                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.url,
                  hintText: 'Image',
                  onChanged: (data){
                    image = data ;
                  },
                ),


                SizedBox(
                  height: 50,
                ),

                CustomButton(
                    text: 'Update',
                  onTap: ()
                  async{
                    isLoading = true ;
                    setState(() {

                    });
                   try {
                   await  updateProduct(product);
                     print('success');
                   } on Exception catch (e){

                     print(e.toString());
                   }
                    isLoading = false ;
                    setState(() {

                    });

                  },


                ),

              ],
            ),
          ),
        ),

      ),
    );
  }

   Future <void> updateProduct(ProductModel product) async{
     await UpdateProductServices().updateProduct(
       id: product.id!.toInt(),

        title: productName == null ? product.title.toString() : productName!,
        price: price == null ? product.price.toString() : price!,
        image: image == null ? product.image.toString() : image!,
        desc: desc == null ? product.description.toString() : desc!,
        category: product.category.toString() ,
    );
     isLoading = false ;

  }
}
