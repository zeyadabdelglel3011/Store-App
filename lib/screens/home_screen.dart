import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/cart_screen.dart';
import 'package:storeapp/services/get_all_product_services.dart';

import '../components/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        actions: [
         IconButton(onPressed: (){
           Navigator.pushNamed(context, CartScreen.id);
         },
             icon:  Icon(
               Icons.shopping_cart,
               color: Colors.black,
               size: 30,
             ),
         ),
        ],
        backgroundColor: Colors.white,
       elevation: 0,
        centerTitle: true,
        title: Text('New Trend',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,

        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
        right: 16,
        top:85,
        ),
        child : FutureBuilder<List<ProductModel>>(
          future:AllProductsServices().getAllProducts() ,
          builder : (context , snapshot){
          if(snapshot.hasData){

            List<ProductModel> products = snapshot.data!;
            return  GridView.builder(
              itemCount: products.length,
              clipBehavior: Clip.none,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 1 ,
                crossAxisSpacing: 10,
                mainAxisSpacing: 100,
              ),
              itemBuilder: (context , index){

                return CustomCard(
                  product: products[index],
                );
              },);
          }
          else{
            return Center(child: CircularProgressIndicator());
          }
          },
        ),
      ),
    );
  }
}
