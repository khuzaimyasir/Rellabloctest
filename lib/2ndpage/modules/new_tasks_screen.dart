import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/2ndpage/shared/cubit/states.dart';


import 'package:flutter_slidable/flutter_slidable.dart';

import '../shared/components/task_item.dart';
import '../shared/cubit/cubit.dart';

class NewTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).newTasks;
        return SafeArea(
          child: SingleChildScrollView(
            physics:
                const BouncingScrollPhysics(parent: const AlwaysScrollableScrollPhysics()),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Todo',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: tasks.length > 0
                        ? Text(
                            'New tasks',
                            style: TextStyle(
                              color: Colors.amber.shade700,
                              fontSize: 13,
                              fontFamily: 'NotoSans',
                            ),
                          )
                        : null,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (tasks.length > 0) ListView.builder(
                          //scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            //print(index);
                            return TaskItem(
                              tasks: tasks[index],
                            );
                          },
                          // separatorBuilder: (context, index) => Padding(
                          //       padding: const EdgeInsets.only(left: 20),
                          //       child: Container(
                          //         width: double.infinity,
                          //         height: 1.0,
                          //         color: Colors.grey[200],
                          //       ),
                          //     ),
                          itemCount: tasks.length) else Padding(
                        padding: const EdgeInsets.only(left: 50,right: 50),
                        child: Container(
                            width: 500,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              image: const DecorationImage(
                                alignment: Alignment.center,
                                image: CachedNetworkImageProvider(
                                  'https://silkofactory.com/wp-content/uploads/2022/03/Screenshot-2022-03-15-at-1.50.46-AM.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ),
                      
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}