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
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Material App Bar'),
        // ),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          // title: Text('Sliver App Bar'),
          floating: false,
          stretch: true,
          snap: false,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              // StretchMode.fadeTitle,
            ],
            title: Text('Sliver App Bar'),
            centerTitle: true,
            background: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
                image: DecorationImage(
                  image: Image.network(
                          'https://www.imgacademy.com/themes/custom/imgacademy/images/helpbox-contact.jpg')
                      .image,
                  opacity: 0.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.red[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 30,
          ),
        )
        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return ListTile(
        //         title: Text('Item $index'),
        //       );
        //     },
        //     childCount: 50,
        //   ),
        // ),
      ],
    ));
  }
}
