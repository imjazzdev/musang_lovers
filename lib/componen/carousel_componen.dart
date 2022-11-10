import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselComponen extends StatefulWidget {
  @override
  _CarouselComponenState createState() => _CarouselComponenState();
}

class _CarouselComponenState extends State<CarouselComponen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      child: 
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          disableCenter: false,
          pauseAutoPlayInFiniteScroll: true,
          viewportFraction: 2
        ),

        items: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.only(right: 10, left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/ml1.1.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.only(right: 10, left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/ml1.2.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.only(right: 10, left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/ml1.3.jpg',
                  fit: BoxFit.cover,
                ),
              )),
        ],
      )
      
    );
  }
}
