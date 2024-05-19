

// import 'package:enoikiou/view/home/wigets/booknow/booknow.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class PriceAndBookNow extends StatelessWidget {
//   const PriceAndBookNow({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 30),
//             child: RichText(
//               text: TextSpan(
//                 style: GoogleFonts.montserrat(
//                     fontSize: 20,
//                     color: Colors.black87,
//                     fontWeight: FontWeight.w500),
//                 children: const <TextSpan>[
//                   TextSpan(text: '\$180'),
//                   TextSpan(
//                       text: '/day', style: TextStyle(color: Colors.black38)),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: 170,
//             height: 60,
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => BookingScreen()));
//               },
//               child: Text(
//                 "Book now",
//                 style: GoogleFonts.montserrat(
//                     fontWeight: FontWeight.w400, fontSize: 18),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 elevation: 0,
//                 shape: new RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                   ),
//                 ),
//               ),
//    ) 
//       )]
//    ) );
//   }
// }