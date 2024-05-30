import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
     final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeF-VhVXJNcH23d4V8Mrsi5ryyO3SFn2qqSxBfBiKAg2wiwQV7l9iEjaAiprJHh7wHRO8&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdYw9gFAPUM2sAYfBPaF2QD0kH4ek1HvtBK67Rdl4tBRPy1114j1fUQgYYaLgG0z8j23o&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtXhcmF5f1LFN-IEV9TN7A4RoRKOB3QSSRLfJEuiMOvUnhMy72mkWPhTLCB4645o03TT0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-zsyiv3UX9eQnanB3R_TG06tEqm5T6s5H48rkClcDrHovMwMcWiItBG8Q3Xi0peCMrUw&usqp=CAU'
    ,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1fVVL208eamlINPwdiEAJLhS8CTCyaOCOwtN0QFrHBGOV9NL8hNrpooMLiGCji1yvcn8&usqp=CAU'
  ];
    return Container(width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imgList.map((item) => Container(
            child: Center(
              child: Image.network(item, fit: BoxFit.cover, width: 1000),
            ),
          )).toList(),
        ),

        ],
      ),
    );
  }
}