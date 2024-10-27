import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/components/custom_card.dart';
import 'package:storeapp/cubits/details_cubit.dart';

import '../models/product_model.dart';
import '../services/get_all_product_services.dart';

class ItemDetails extends StatelessWidget {
   ItemDetails({super.key, this.item , this.personId });
  static String id = "itemDetails";

  final String? item ;
   final int? personId;





  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text('Item Details',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,

            ),
          ),

        ),
      body:  Padding(
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
              return  Padding(
                padding: const EdgeInsets.all(15),
                child: ListView.builder(
                  itemCount: 1,
                  clipBehavior: Clip.none,

                  itemBuilder: (context , index){

                    return Column(
                      children: [
                        Text(
                           products[index].title.toString() ,
                        ),
                      ],
                    );

                  },),
              );
            }
            else{
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),






















    //FutureBuilder<List<ProductModel>>(
        //   future:AllProductsServices().getAllProducts() ,
        //   builder : (context , snapshot){
        //     if(snapshot.hasData){
        //
        //       List<ProductModel> products = snapshot.data!;
        //       return  ListView.builder(
        //         itemCount: products.length,
        //         clipBehavior: Clip.none,
        //
        //         itemBuilder: (context , index){
        //           return CustomCard(
        //             product: products[index],
        //           );
        //         },);
        //     }
        //     else{
        //       return Center(child: CircularProgressIndicator());
        //     }
        //   },
        // ),

    );
  }
}
