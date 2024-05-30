
import 'package:enoikiou/model/carmodel.dart';
import 'package:flutter/material.dart';



class descributionScreen extends StatelessWidget {
  final CarModel car;
  const descributionScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          height: 25,width: 100,
          decoration: BoxDecoration(borderRadius: 
         BorderRadius.circular(10),color: Colors.white ),child: Text("DESCRIPTION",style: 
          TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),SizedBox(height: 20,)
        ,
        Text(
          car.description,
          style: TextStyle(
            color: Colors.white,
    
            
          ),
        ),
       
      ],
    );
  }
}
