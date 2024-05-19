
import 'package:enoikiou/controller/bookcontroller.dart';
import 'package:flutter/material.dart';


class ConformScreen extends StatefulWidget {
  ConformScreen({super.key});

  @override
  State<ConformScreen> createState() => _ConformScreenState();
}

class _ConformScreenState extends State<ConformScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CarBookingController.of(context);
    final finalList = provider.favorateslist;

    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
             
          });
        },
        child: Icon(
          icon,
        ),
      );
    }

    return Scaffold(
      // for total and check out
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
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
                                  color: Color.fromARGB(255, 206, 157, 214),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  cartItems.image,
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
                                    "\₹${cartItems}",
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
                            
                            // SizedBox(height: 10),
                            // Container(
                            //   height: 40,
                            //   decoration: BoxDecoration(
                            //     color: Color.fromARGB(255, 206, 157, 214),
                            //     border: Border.all(
                            //       color: Colors.grey.shade200,
                            //       width: 2,
                            //     ),
                            //     borderRadius: BorderRadius.circular(20),
                            //   ),
                            //   child: Row(
                            //     children: [
                            //       SizedBox(width: 10),
                            //       productQuantity(Icons.add, index),
                            //       SizedBox(width: 10),
                            //       Text(
                            //         cartItems.image,
                            //         style: TextStyle(
                            //           color: Colors.black,
                            //           fontWeight: FontWeight.bold,
                            //         ),
                            //       ),
                            //       SizedBox(width: 10),
                            //       productQuantity(Icons.remove, index),
                            //       SizedBox(width: 10),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
