import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHuFl7g6Cqe0xnB853CBcXEINYDsz42Q7hVvSDjBsbpF_fZcOa-wE9iheX6qHH-tzQLWY&usqp=CAU',
    'https://via.placeholder.com/600/771796',
    'https://via.placeholder.com/600/24f355',
    'https://via.placeholder.com/600/d32776',
    'https://via.placeholder.com/600/f66b97'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel Slider Demo')),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                      child: Image.network(item, fit: BoxFit.cover, width: 1000),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}