import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/2ndpage/shared/cubit/cubit.dart';
import 'package:online_shop_app/cubitz/app_cubit_states.dart';
import 'package:online_shop_app/cubitz/app_cubits.dart';

// detailpage
class BarItemPage extends StatelessWidget {
  const BarItemPage({Key? key}) : super(key: key);

// in spot it comes after bloc lister but same method of var declaration
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        DetailState detail = state as DetailState;
        return Scaffold(
          appBar: AppBar(
          leading: IconButton(onPressed: (() {
            BlocProvider.of<AppCubits>(context)
                                          .goHome();
          }), icon: Icon(Icons.back_hand)),
          ),
          body:  Column(
            children: [Container(
                                          width: double.maxFinite,
                                          height: 500,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                  detail.place.imageUrl),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        // on pressed spot route is used
             ] ),
                                      
        );
        
      },
    );
  }
}
