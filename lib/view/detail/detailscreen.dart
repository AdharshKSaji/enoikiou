

import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/view/detail/widget/appbar.dart';
import 'package:enoikiou/view/detail/widget/descri.dart';
import 'package:enoikiou/view/detail/widget/itemdetail.dart';
import 'package:enoikiou/view/detail/widget/requirements/requirement.dart';
import 'package:enoikiou/view/home/widget/boolingscreen.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatefulWidget {
  final CarModel car;
  const DetailScreen({super.key, required this.car});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  
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
            
              DetailAppBar(
              car: widget.car,
            ), 
            Text(widget.car.title,style: 
            TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          
           
              Material(elevation: 3.0,
                borderRadius: BorderRadius.circular(10),color:  Colors.white,
                child: Container(
                  
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  child: 
                  Image.network(widget.car.image,fit: BoxFit.cover,)
                    ) 
              
              ) , Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.star,color: Colors.yellow,),
                  ),
                   Text(widget.car.review,style: 
                   TextStyle(color: Colors.yellow),),
                ],
              ),
            ),SizedBox(height: 15,),
            descributionScreen(car: widget.car),
            SizedBox(height: 10,),
            RulesAndRegulation(),
            // SizedBox(height: 20,),
            // DocumentsNeeded(),
            
            Center(
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color:
                Colors.blue
              ),
                child: TextButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context) => CarBookingScreen(car: widget.car),));
                   
                  
                }, child: Text("PROCEED")),
              ),
            )
          ],
        ),
      )));
              
            
    
  }
}