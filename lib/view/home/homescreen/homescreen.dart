import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/view/favorite/fav.dart';
import 'package:enoikiou/view/home/widget/carsscreen.dart';
import 'package:enoikiou/view/home/widget/conformscren.dart';
import 'package:enoikiou/view/home/widget/drawer.dart';
import 'package:enoikiou/view/home/widget/postaddscreen/addscreen.dart';
import 'package:enoikiou/view/home/widget/searchbar.dart';
import 'package:enoikiou/view/loginscreen/widgets/imagecarousel.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var collectionRef = FirebaseFirestore.instance.collection("Cars");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          
        ),drawer: DrawerScreen() ,
        backgroundColor: Colors.black,
        body:
         SingleChildScrollView(
          child: Column(
            children: [
              
              searchBar(),
            SizedBox(height: 10,),
            ImageCarousel(),
              StreamBuilder(
                  stream: collectionRef.snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: const Text('Something went wrong'));
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                   
                    return SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // for search bar
                            // searchBar(),
                            SizedBox(height: 20),
                            // ImageCarousel(),
                            // SizedBox(height: 10),
              
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 AnimatedTextKit(
                                             animatedTexts: [
                                               TypewriterAnimatedText(
                                           'Avilable Cars!',
                                           textStyle: const TextStyle(
                                             fontSize: 25.0,
                                             fontWeight: FontWeight.bold,
                                           color: Colors.white
                                           ),
                                           speed: const Duration(milliseconds: 400),
                                               ),
                                             ],
                                             
                                             totalRepeatCount: 4,
                                             pause: const Duration(milliseconds: 300),
                                             displayFullTextOnTap: true,
                                             stopPauseOnTap: true,
                                           ),
                                           TextButton.icon(onPressed: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => AdminHome(),));
                                             
                                           }, icon: Icon(Icons.add), label: Text("add new post")),
                                
                               
                              ],
                            ),
                            // for shopping items
                            SizedBox(height: 10),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                            //  itemCount: 5,
                              itemCount: snapshot.data?.docs.length ?? 0,
                              itemBuilder: (context, index) {
                                var map = snapshot.data!.docs[index];
                                return CarScreen(
                                    car: CarModel.fromMap(map.data()));
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black87,
        ),
        child: BottomNavigationBar(
          elevation: 2,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          unselectedItemColor: Color(0xFF686868),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
          
            BottomNavigationBarItem(
             icon: IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Favoritescreen(),));
               
             }, icon: Icon(Icons.favorite)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => ConformScreen(),));
               
             }, icon: Icon(Icons.book_online)),
              label: "",
            ),
          ],
        )

       )   );
  }
}