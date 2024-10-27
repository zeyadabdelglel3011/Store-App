import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/item_details.dart';
import 'package:storeapp/screens/update_product_screen.dart';

class CustomCard extends StatefulWidget {
   CustomCard({super.key , required this.product});

  ProductModel product ;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool click = true ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ()
        {
          Navigator.pushNamed(context, UpdateProductScreen.id , arguments: widget.product);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(

              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: 0,
                    offset: Offset( 10 , 10 ),
                  ),
                ],
              ),
              child: Card(

                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      Text(
                        widget.product.title!.substring(0,14),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,



                        children: [


                          Text(
                           r'$' ' ${widget.product.price.toString()}',
                            style: TextStyle(

                              fontSize: 16,
                            ),
                          ),

                          IconButton(onPressed: (){
                                setState(() {
                                  click = !click ;
                                });
                          },
                              icon: Icon(
                                Icons.favorite,
                              ),
                            color: (click == false) ? Colors.red : Colors.grey,

                          ),

                        ],
                      ),
                    ],



                  ),
                ),
              ),
            ),
            Positioned(
              right: 22,
              bottom: 120,

              child: Image.network(
              widget.product.image.toString(),
                height: 100,
              width: 100,

              ),
            ),
            Positioned(
                child:   IconButton(
                  hoverColor: Colors.black,
                  onPressed: ()
                  {
                    Navigator.pushNamed(context, ItemDetails.id);

                },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,

                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
