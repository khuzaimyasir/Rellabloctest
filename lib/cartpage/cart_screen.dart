import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubitz/app_cubit_states.dart';
import '../cubitz/app_cubits.dart';

import 'cubits/cartkys_cubit.dart';
import 'cubits/cartkys_state.dart';


class CartPagge extends StatefulWidget {
  const CartPagge({ Key? key }) : super(key: key);

  @override
  State<CartPagge> createState() => _CartPaggeState();
}

class _CartPaggeState extends State<CartPagge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartkysCubit, CartkysState>(builder: (context, state) {
       
        if (state is CartLoadedState) {
          return const CartScreen();
        } if (state is LoadedState) {
          return const CartScreen();
          // commment this
        } if (state is CartUpdatingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        // if (state is LoadingState) {
        //   return const Center(child: CircularProgressIndicator(),);
        // }
         else {
          return Container();
        }
      }),
    );
  }
}





class CartScreen extends StatefulWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is LoadedState) {
            var cart = state.places;
            return  ListView.builder(
                          itemCount: cart.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<AppCubits>(context)
                                          .getonefood(cart[index]);
                                    },
                                    child: Stack(children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children:[ Card(
                                          child: Container(
                                            width: 80,
                                            height: 120,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                              image: DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                    cart[index].imageUrl),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                         const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("youube"),
                                          const Text("9992"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.remove_circle_outline,
                                            )),
                                        Text("1"),
                                        IconButton(
                                            onPressed: (() {}),
                                            icon: Icon(
                                              Icons.add_circle_rounded,
                                            )),
                                      ],
                                    ),
                                          ]  ),
                                    ]),
                                    // const Text("bloc state"),
                                  ),
                                ],
                              ),
                            );
                          });
      
          };
          return Container();
         } )
          )
          );
}
}

      // Row(
      //                                 children: [
      //                                   IconButton(
      //                                       onPressed: (() {}),
      //                                       icon: Icon(
      //                                         Icons.remove_circle_outline,
      //                                       )),
      //                                   Text("1"),
      //                                   IconButton(
      //                                       onPressed: (() {}),
      //                                       icon: Icon(
      //                                         Icons.add_circle_rounded,
      //                                       )),
      //                                 ],
      //                               ),

// info.length,CachedNetworkImageProvider(
//                            info[index].imageUrl),

// info.length,