import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key , this.hintText , this.onChanged , this.inputType});


  Function(String)? onChanged;

  String? hintText ;
  TextInputType? inputType ;
  @override
  Widget build(BuildContext context) {
    return TextField(

      keyboardType: inputType,
      onChanged:onChanged ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          letterSpacing: 1,
        ),


        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(

          ),
          borderRadius: BorderRadius.circular(8),
        ),

      ),



    );

  }
}
