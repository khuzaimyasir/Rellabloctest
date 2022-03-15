import 'package:flutter/material.dart';


class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
final String label;


  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
            color: Colors.purple.shade900,
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const Icon(
            //   Icons.chevron_right_outlined,
            //   color: Colors.white70,
            //   size: 45,
            // ),
            Text( label,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white38 ,
                )),
          ],
        ));
  }
}
