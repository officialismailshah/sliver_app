import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text('Material App Bar'),
          // ),
          body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Material App Bar'),
            centerTitle: true,
            // title: Text('Sliver App Bar'),
            floating: false,
            stretch: true,
            snap: false,
            // backgroundColor: Colors.brown,
            // foregroundColor: Colors.yellow,
            // bottom: TabBar(
            //   tabs: [
            //     Tab(
            //       icon: Icon(Icons.cloud_outlined),
            //     ),
            //     Tab(
            //       icon: Icon(Icons.beach_access_sharp),
            //     ),
            //     Tab(
            //       icon: Icon(Icons.brightness_5_sharp),
            //     ),
            //   ],
            // ),

            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              stretchModes: [
                StretchMode.zoomBackground,
                // StretchMode.blurBackground,
                // StretchMode.fadeTitle,
              ],
              // title: Text('Sliver App Bar'),
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                    fit: BoxFit.cover,
                  ),
                  // BackdropFilter(
                  //   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  //   child: Container(
                  //     color: Colors.white.withOpacity(0.5),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          // SliverFillRemaining(
          //   child: TabBarView(
          //     children: [
          //       Container(
          //         color: Colors.amber,
          //         child: Text("It's cloudy here"),
          //       ),
          //       Container(
          //         color: Colors.red,
          //         child: Text("It's rainy here"),
          //       ),
          //       Container(
          //         color: Colors.blueGrey,
          //         child: Text("It's sunny here"),
          //       ),
          //     ],
          //   ),
          // ),

          // SliverGrid(
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 200.0,
          //     mainAxisSpacing: 20.0,
          //     crossAxisSpacing: 20.0,
          //     childAspectRatio: 4.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.red[100 * (index % 9)],
          //         child: Text('grid item $index'),
          //       );
          //     },
          //     childCount: 30,
          //   ),
          // )
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  tileColor: Colors.amber,
                  title: Text('Item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      )),
    );
  }
}
