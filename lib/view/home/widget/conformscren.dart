
import 'package:enoikiou/controller/bookcontroller.dart';
import 'package:enoikiou/view/paymentscreen/payment.dart';
import 'package:flutter/material.dart';


class ConformScreen extends StatefulWidget {
  // final CarModel Cars;
  ConformScreen({super.key});

  @override
  State<ConformScreen> createState() => _ConformScreenState();
}

class _ConformScreenState extends State<ConformScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CarBookingController.of(context);
    final finalList = provider.favorateslist;


    return Scaffold(
      // for total and check out
      backgroundColor: Colors.black,
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "My Bookings",
          style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  final cartItems = finalList[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.network(
                                  cartItems.image,fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItems.title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    cartItems.category,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "\₹${cartItems.price}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(onPressed: 
                               () {
                                finalList[index].image;
                                finalList.removeAt(index);
                                setState(() {});
                              }, child:Text("Cancel Car..!",style: TextStyle(color: Colors.red),) )
                            
                         
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            BottomAppBar(color: Colors.black,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.blue),
                child:TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => payment()));
                  
                }, child: Text("Pay NOW ",style: 
                TextStyle(
                  color: Colors.white
                ))
              ))],
            ),)
          ],
        ),
      ),
    );
  }
}
