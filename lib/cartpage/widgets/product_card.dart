// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../../cubitz/app_cubits.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        child: ListView.builder(
//                           itemCount: info.length,
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (_, index) {
//                             return Container(
//                               margin: const EdgeInsets.only(right: 30),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       BlocProvider.of<AppCubits>(context)
//                                           .getonefood(info[index]);
//                                     },
//                                     child: Stack(children: [
//                                       Container(
//                                         width: 80,
//                                         height: 120,
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           color: Colors.white,
//                                           image: DecorationImage(
//                                             image: CachedNetworkImageProvider(
//                                                 info[index].imageUrl),
//                                             fit: BoxFit.cover,
//                                           ),
//                                         ),
//                                       ),
//                                     ]),
//                                     // const Text("bloc state"),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }),
      
//     );
//   }
// }