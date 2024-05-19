import 'dart:developer';

import 'package:enoikiou/model/carmodel.dart';
import 'package:enoikiou/view/home/homescm.dart';
import 'package:enoikiou/view/home/widget/bookappbar.dart';
import 'package:enoikiou/view/home/widget/conformscren.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class CarBookingScreen extends StatefulWidget {
 final CarModel car;
   CarBookingScreen({super.key,required this.car});

  @override
  State<CarBookingScreen> createState() => _CarBookingScreenState();
}

class _CarBookingScreenState extends State<CarBookingScreen> {
  Location location = new Location();
  LatLng keralastartPoints = LatLng(8.5241, 76.9366);
  LatLng keralaendpoints = LatLng(12.4996,  74.9869);
  LatLng? myLocation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await getLocationUpdates();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           IconButton(onPressed: () {
              Navigator.pop(context);
              
            }, icon: Icon(Icons.arrow_back_ios)),
          BookAppBar(car: widget.car),
          Expanded(child: myLocation == null
              ? Center(child: CircularProgressIndicator())
              : GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: keralastartPoints, zoom: 13),
                  markers: {
                    Marker(
                        markerId: MarkerId("kakkanad"),
                        icon: BitmapDescriptor.defaultMarker,
                        position: keralastartPoints),
                    Marker(
                        markerId: MarkerId("csez"),
                        icon: BitmapDescriptor.defaultMarker,
                        position: keralaendpoints),
                    Marker(
                        markerId: MarkerId("myLocation"),
                        icon: BitmapDescriptor.defaultMarker,
                        position: myLocation!)
                  },
                ),), Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly
          ,
            children: [
              ElevatedButton(
              onPressed: () {
                // Show the Snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Booking Successful'),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ConformScreen(),));
                        // Code to execute when OK is pressed (optional)
                      },
                    ),
                  ),
                );
              },
              child: Text('Book Now'),
                      ),
                      ElevatedButton(onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        
                      }, child: Text(("BACK TO HOME")))

          
        ],
      ),

   ]) );
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        log("denied1");

        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        log("denied");
        return;
      }
    }

    location.onLocationChanged.listen((LocationData currentUserLocation) {
      print(currentUserLocation.latitude.toString());
      print(currentUserLocation.longitude.toString());
      if (currentUserLocation.latitude != null &&
          currentUserLocation.longitude != null) {
        setState(() {
          myLocation = LatLng(
              currentUserLocation.latitude!, currentUserLocation.longitude!);
          print(myLocation?.toString());
        });
      }
    });
  }
}