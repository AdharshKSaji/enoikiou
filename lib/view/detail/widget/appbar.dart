import 'package:enoikiou/controller/favoriecontroller.dart';
import 'package:enoikiou/model/carmodel.dart';
import 'package:flutter/material.dart';


class DetailAppBar extends StatelessWidget {
  final CarModel car;
  const DetailAppBar({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    final provider = Favoritecontroller.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
           IconButton(onPressed: () {
              Navigator.pop(context);
              
            }, icon: Icon(Icons.arrow_back_ios)),
            
          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/enoikiou-high-resolution-logo-white.jpg"),),
          
          
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              provider.toggleFavorite(car);
            },
            icon: GestureDetector(
                onTap: () {
                  provider.toggleFavorite(car);
                },
                child: Icon(
                  provider.isExist(car)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.blue,
                  size: 22,
                ),
              ),
            ),
          
        
      ]),
    );
  }
}