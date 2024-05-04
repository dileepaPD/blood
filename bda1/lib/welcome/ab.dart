import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ab extends StatefulWidget {
  const ab({super.key});

  @override
  State<ab> createState() => abState();
}

class abState extends State<ab> {
  final List<String> carouselImages = [
    'lib/asset/image1.png',
    'lib/asset/image2.jpg',
    'lib/asset/image3.jpg',
    'lib/asset/image4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SafeArea(
            child: Container(
          color: Color.fromARGB(0, 182, 22, 22),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Color.fromARGB(255, 59, 182, 207),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 210,
                      height: 200,
                      color: Color.fromARGB(255, 12, 19, 22),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: carouselImages.map((item) {
                          // Map each image path to a Container with an Image.asset
                          return Container(
                            width: 200,
                            height: 200,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 125, 28, 7),
                            ),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Text(
                    "Welcome to blood donation camp applly",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 252, 251, 250),
                        backgroundColor: Color.fromARGB(255, 247, 29, 29)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Let's Start"),
                    ),
                  )
                ],
              )),
        )),
      ),
    );
  }
}
