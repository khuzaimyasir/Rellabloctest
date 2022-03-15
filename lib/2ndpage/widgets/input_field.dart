import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  const MyInputField ({Key? key, required this.title, required this.hint, this.controller, this.widget,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:16),
       padding: const EdgeInsets.only(left: 14,right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(
            color: Colors.black
          ),

          ),
          Container(
            height: 52,
            margin: const EdgeInsets.only(top:8),
            padding: const EdgeInsets.only(left: 14,),
            decoration: BoxDecoration(
              border:Border.all(color: Colors.red,
              width: 1.0,),
              borderRadius: BorderRadius.circular(10),
            ),
             child: Row(
               children: [
                 Expanded(
                   child:TextFormField(
                   readOnly: widget==null?false:true,
                   autofocus: false,
                   cursorColor:Colors.red ,
                   controller: controller,
                   style: const TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w200,    

                   ),
                 decoration: InputDecoration(
                   fillColor: Colors.black,
                   hintText: hint,
                   hoverColor: Colors.black,

                   focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.redAccent,
                     width: 0,
                   ),
                   ),
                 ),
                 ), 
                 ),
             widget==null?Container():Container(child:widget)
               ],
             ),
          ),
        ]),

    );
  }
}
