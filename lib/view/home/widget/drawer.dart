import 'package:enoikiou/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
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
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen(),), (route) => false);
                },
                
                
              ),
        
        
      ],),
      ),
    );
  }
}