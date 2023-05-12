import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Widget: Swiper",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 300,
              child: Swiper(
                itemWidth: 300,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.blue,
                        child: Center(child: Text('Страница 1')),
                      ));
                },
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
                layout: SwiperLayout.STACK,
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 400,
              child: Swiper(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.red,
                           child: Center(child: Text('Страница 1')),
                          height: 300,
                        )
                      ],
                    ),
                  );
                },
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            )
          ],
        ),
      ),
    );
  }
}


