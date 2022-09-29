// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'cubits/cartkys_cubit.dart';
// import 'cubits/cartkys_state.dart';

// class addedcartPage extends StatefulWidget {
//   const addedcartPage({ Key? key }) : super(key: key);

//   @override
//   State<addedcartPage> createState() => _addedcartPageState();
// }

// class _addedcartPageState extends State<addedcartPage> {
//   @override
//      Widget build(BuildContext context) {
//     return BlocBuilder(
//         bloc: BlocProvider.of<CartkysCubit>(context),
//         builder: (context, snapshot) {
//           if (snapshot is CartLoadedState)
//             return Scaffold(
//               appBar:  AppBar(
//                 title: Text
//                 ("Your cart"),
//               ),
//               body: ListView(
//                 children: snapshot.cart
//                     .map(
//                       (e) => ListTile(
//                         // title: Text(e.name ?? ''),
//                         // subtitle: Text("USD " +
//                         // (e.price ?? '')),
//                         trailing: IconButton(
//                           icon: Icon(
//                           Icons.remove_circle),
//                           onPressed: () {
// // Updated code              
//                               BlocProvider.of
//                               <CartkysCubit>(context)
//                               .removekys(e);
//                           },
//                         ),
//                       ),
//                     )
//                     .toList(),
//               ),
//             );
//           return Container();

//         });

//   }

// }
      
    
  
