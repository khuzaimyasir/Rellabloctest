
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
 bool? isResponsive;
  double? width;
   ResponsiveButton({
    Key? key,
    this.isResponsive=false,
    this.width,
  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Container(  
      
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.arrow_forward_ios,
          color: Colors.redAccent,
          size: 66,),
        ],
      )

    );
  }
}
