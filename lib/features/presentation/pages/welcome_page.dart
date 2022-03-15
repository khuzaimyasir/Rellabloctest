import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/features/presentation/widgets/app_large_text.dart';
import 'package:online_shop_app/features/presentation/widgets/responsive_button.dart';
import 'package:online_shop_app/features/presentation/widgets/tikTokVideoColumn.dart';

import '../../../cubitz/app_cubits.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
 'https://images.unsplash.com/photo-1536329583941-14287ec6fc4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8cHJvZHVjdGl2aXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1200&q=60',
    'https://images.unsplash.com/photo-1536329583941-14287ec6fc4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8cHJvZHVjdGl2aXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1200&q=60',
    'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Stack(
              children: [
                Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(images[index]), fit: BoxFit.cover),
                  ),
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 100, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLargeText(
                              text: "Tracker",
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            AppLargeText(
                              text: "By Rella",
                              color: Colors.grey,
                              size: 39,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 250,
                              child: AppLargeText(
                                text:
                                    "Make your social media accounts standout ",
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 100,
                              child: GestureDetector(
                                onTap: (() {
                                  BlocProvider.of<AppCubits>(context)
                                      .getFoods();
                                }),
                                child: SizedBox(
                                    width: 200, child: Row(children:[ResponsiveButton(label: "tap",width: 50, )])),
                              ),
                            ),
                            
                            const SizedBox(
                              height: 90,
                            ),
                            const TikTokButtonColumn(),
                            // ResponsiveButton(),
                          ],
                        ),
                        Column(
                          children: List.generate(3, (indexDots) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 2),
                              height: index == indexDots ? 25 : 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
