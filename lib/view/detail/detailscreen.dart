import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/view/detail/widget/appbar.dart';
import 'package:enoikiou/view/detail/widget/descri.dart';
import 'package:enoikiou/view/detail/widget/itemdetail.dart';
import 'package:enoikiou/view/home/widget/boolingscreen.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatefulWidget {
  final CarModel car;
  const DetailScreen({super.key, required this.car});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 
      backgroundColor: Colors.black
      ,
      // for add to cart , icon and quantity
      
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () {
              Navigator.pop(context);
              
            }, icon: Icon(Icons.arrow_back_ios)),
            
            DetailAppBar(
              car: widget.car,
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Material(elevation: 5.0,
                borderRadius: BorderRadius.circular(20),color:  Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60),
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 100,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // for product name, price, rating, and seller
                        ItemsDetails(car: widget.car),
                        const SizedBox(height: 20),
                        
                        
                        // for description
                        // Description(
                        //   description: widget.car.description,
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              
            ),Container(
              child: Row(
                children: [
                   Description(
                          description: widget.car.description,
                        )
                ],
              ),
            ),SizedBox(height: 50,),
            Center(
              child: ElevatedButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder:(context) => CarBookingScreen(car: widget.car),));
                 
                
              }, child: Text("fghj")),
            )
          ],
        ),
      )),
    );
  }
}