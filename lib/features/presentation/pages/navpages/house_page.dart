import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/features/presentation/widgets/app_large_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HousePage extends StatefulWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> with TickerProviderStateMixin {
  var images = {
    "https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif",
    'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    "https://www.pakstyle.pk/img/products/l/p13688-embroidered-lawn-dress.jpg",
    "https://www.pakstyle.pk/img/products/l/p13688-embroidered-lawn-dress_1.jpg",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Expanded(child: Container(),),
                      const Icon(Icons.menu, size: 30, color: Colors.black54),
                      Container(
                        margin: const EdgeInsets.only(
                          right: 20,
                        ),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppLargeText(text: "Discover"),
                ),
                const SizedBox(
                  height: 10,
                ),
                //  tabbar
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        labelColor: Colors.green.shade800,
                        controller: _tabController,
                        labelPadding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: CircleTabIndicator(
                          color: Colors.black45,
                          radius: 4,
                        ),
                        tabs: const [
                          Tab(
                            text: "Places",
                          ),
                          Tab(text: "Inspiration"),
                          Tab(
                            text: "Emotions",
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 357,
                  width: double.maxFinite,
                  child: TabBarView(controller: _tabController, children: [
                    Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: TextButton.icon(
                                      icon:
                                          const Icon(Icons.add_to_home_screen),
                                      label: const Text(
                                        "Open Website",
                                        style: TextStyle(fontSize: 25,
                                        color: Colors.green),
                                      ),
                                      onPressed: () => launch(
                                          "https://www.rellasocial.com/"),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(height: 2.0),
                          Card(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: TextButton.icon(
                                    icon: const Icon(Icons.person),
                                    label: const Text("contact instagram",
                                        style: TextStyle(fontSize: 25,
                                        color: Colors.green)),
                                    onPressed: () => launch(
                                        "https://www.instagram.com/rellasocial/"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Card(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: TextButton.icon(
                                    icon: const Icon(
                                        Icons.youtube_searched_for_sharp),
                                    label: const Text("Subscribe on youtube",
                                        style: TextStyle(fontSize: 25,
                                        color: Colors.green),
                                        ),
                                    onPressed: () => launch(
                                        "https://www.youtube.com/channel/UC-27McNXi7E4Z3H1kZnTjzg"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Explore more",
                          size: 22,
                        ),
                           InkWell(
                            onTap: (){},
                          child: const Text(
                            "See all ",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      images.elementAt(index),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                               const Text("blogs"),
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Popular ",
                          size: 22,
                        ),
           InkWell(
                            onTap: (){},
                          child: const Text(
                            "See all ",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18,
                        color: Colors.blue),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                // wrap with singlechildscrollview when item count is index
                Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      images.elementAt(index),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                           const Text("youtube"),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
