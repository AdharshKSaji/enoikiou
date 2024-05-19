
import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/model/categorymodel.dart';
import 'package:enoikiou/view/home/widget/carsscreen.dart';
import 'package:enoikiou/view/home/widget/conformscren.dart';
import 'package:enoikiou/view/home/widget/searchbar.dart';
import 'package:enoikiou/view/loginscreen/loginscreen.dart';
import 'package:enoikiou/view/loginscreen/widget/favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<List<CarModel>> selectcategories = [
      luxuryCars,
      sportsCars,
      sedanCars,
      suvCars,
      electricCars
    ];
    return Scaffold(endDrawer: Drawer(
      child: Column(children: [
          // Profile picture
              CircleAvatar(
                radius: 50,
               backgroundColor: Colors.amber,
              ),
              SizedBox(height: 16),
              // User name
              Text(
                "userName",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // User email
              Text(
                "userEmail",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 8),
              // User phone
              Text(
                "userPhone",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 8),
              // User address
              Text(
                "userAddress",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              // Edit profile button
              ElevatedButton.icon(
                icon: Icon(Icons.edit),
                label: Text('Edit Profile'),
                onPressed: () {
                  // Handle edit profile
                },
              ),
              SizedBox(height: 16),
              // Log out button
              ElevatedButton.icon(
                icon: Icon(Icons.logout),
                label: Text('Log Out'),
                onPressed: () {
                  // Handle log 
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Login(),), (route) => false);
                },
                
                
              ),
        
        
      ],),
    ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CircleAvatar(backgroundImage: AssetImage("assets/enoikiou-high-resolution-logo-white.jpg"),)
        
      ),
      backgroundColor:Colors.black38 ,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // for search bar
              searchBar(),
              SizedBox(height: 20),
            
              

              

              SizedBox(height: 20),
              // for category selection
              carItems(),

              SizedBox(height: 20),
              if (selectedIndex == 0)

              SizedBox(height: 30,),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Avilable Cars",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              // for shopping items
              SizedBox(height: 10),
              ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                
                itemCount: selectcategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return CarScreen(
                    car: selectcategories[selectedIndex][index],
                  );
                },
              )
            ],
          ),
        ),
      ),
  bottomNavigationBar: Theme(
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
        )));
  }

  SizedBox carItems() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: selectedIndex == index
                      ? Colors.blue[200]
                      : Colors.transparent,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(categoriesList[index].category),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      categoriesList[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
