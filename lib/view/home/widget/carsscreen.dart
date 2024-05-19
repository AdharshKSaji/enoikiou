import 'package:enoikiou/controller/favoriecontroller.dart';
import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/view/detail/detailscreen.dart';
import 'package:flutter/material.dart';


class CarScreen extends StatelessWidget {
  final CarModel car;
  const CarScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    final provider = Favoritecontroller.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(car: car),
          ),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Material(elevation: 5.0,
            borderRadius: BorderRadius.circular(20),color:  Colors.grey,
            
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // 
                    color: Colors.white
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Center(
                      child: Image.asset(
                        car.image,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        car.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\₹${car.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}