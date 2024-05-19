import 'package:enoikiou/controller/bookcontroller.dart';
import 'package:enoikiou/model/carmodel.dart';
import 'package:flutter/material.dart';


class BookAppBar extends StatelessWidget {
  final CarModel car;
  const BookAppBar({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    final provider = CarBookingController.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(backgroundImage: AssetImage("assets/enoikiou-high-resolution-logo-white.jpg"),),
          Row(
            children: [
              // IconButton(
                
              
              //   onPressed: () {
              //     provider.toggleFavorite(car);
              //   },
              ElevatedButton.icon(onPressed: () {
                  provider.toggleFavorite(car);
                },label:Text("conform") ,
                icon: GestureDetector(
                  
                    onTap: () {
                      provider.toggleFavorite(car);
                    },
                    child: Icon(
                      
                      provider.isExist(car)
                          ? Icons.done_outline
                          : Icons.done_outline_outlined,
                      color: Colors.blue,
                      size: 22,
                    ),
                  ),
                ),
                
            ],
          ),
            // Text("click here to procced")
          
        
      ]),
    );
  }
}
