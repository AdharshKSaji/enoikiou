
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/view/detail/detailscreen.dart';
import 'package:flutter/material.dart';




class CarScreen extends StatefulWidget {
  final CarModel car;
  const CarScreen({super.key, required this.car});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  CollectionReference collectionRef =
  FirebaseFirestore.instance.collection("Cars");
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.green
];
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(car: widget.car),
          ),
        );
      },
      child:
       Stack(
        children: [
 Padding(
   padding: const EdgeInsets.all(10.0),
   child: Material(elevation: 5.0,
              borderRadius: BorderRadius.circular(20),color:  Colors.grey,
              
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // 
                      color: Colors.white
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        widget.car.image,
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.fill,
                      ), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // for animation
                          AnimatedTextKit(
                              animatedTexts: [
                                ColorizeAnimatedText(
                                  widget.car.title,
                                  textStyle: TextStyle(fontFamily: "Horizon",fontSize: 30),
                                  colors: colorizeColors,
                                ),
                                ColorizeAnimatedText(
                                  widget.car.title,
                                  textStyle: TextStyle(fontFamily: "Horizon",fontSize: 30),
                                  colors: colorizeColors,
                                ),]
                               , isRepeatingAnimation: true,
                               onTap: () {
      print("Tap Event");
    },
     
   
                                                    ),IconButton(onPressed: () {showBottomSheet(context: context, 
                                                    builder: (BuildContext context) {
                                                      return Center(
                                                        child: Column(
                                                          children: [
                                                            Row(mainAxisAlignment: MainAxisAlignment.end,
                                                              children: [IconButton(onPressed: () {
                                                                Navigator.pop(context);
                                                                
                                                              }, icon: Icon(Icons.close))],
                                                            ),
                                                            Column(mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                ElevatedButton.icon(onPressed: () {
                                                                  
                                                                },
                                                                 icon: Icon(Icons.edit), label:Text("Edit Post"),
                                                                 ),
                                                                  ElevatedButton.icon(onPressed: () {
                                                                  
                                                                    
                                                                  
                                                                },
                                                                 icon: Icon(Icons.delete_forever), label:Text("Delete Post"),
                                                                 )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                      
                                                    },);
                                                      
                                                    }, icon: Icon(Icons.more_horiz))
                                                    ],
                                                    
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Varient : "
                                  ),
                                   TextSpan(
                                    text: widget.car.category,
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                  ),
                                  
                                ]
                              )
                            ),
                           Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Fuel : "
                                   ,  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                  ),
                                   TextSpan(
                                    text: widget.car.fuel,
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                  ),
                                  
                                ]
                              )
                            ),
                          ],
                        ),
                        
                      ),Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(widget.car.transaction,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)],
                      ),
                      // Text(widget.car.transaction),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(height: 30,
                          width: 90,decoration:
                           BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black, ),
                          
                            child: Center(
                              child: Row(
                                children: [
                                  
                                  Text(
                                    "\₹${widget.car.price}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,color: Colors.white
                                    ),
                                  ),
                                  Text("/Day",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,color: Colors.white
                                    ),)
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      )
                    ],
                    
                  ),
                ),
              ),
 ),
         ] ),
         
        
      );
    
  }
}