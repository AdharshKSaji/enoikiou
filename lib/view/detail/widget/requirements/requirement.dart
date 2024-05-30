import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DocumentsNeeded extends StatelessWidget {
  const DocumentsNeeded({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(height: 25,width: 160,
            decoration: BoxDecoration(borderRadius: 
           BorderRadius.circular(10),color: Colors.white ),child: Text("DOCUMENT REQUIRED",style: 
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
        ),SizedBox(height: 20,)
        ,

        ReadMoreText( '1. Original Driving License\n'
              'Your driving license is the first document you need to self-drive a car. Either upload your original driving license or submit a copy to the car rental provider\'s office. If you\'re booking a car and someone else is driving, their driving license copy will need to be submitted.\n\n'
              '2. Identity Proof (Voter ID or Aadhar card)\n'
              'If you are an Indian, then you need to upload your voter card or Aadhar card as proof of your citizenship and your address. The same rule applies if you are booking the car but are not the person who will drive it; you need to upload the Aadhar or voter card of the person who will be driving the car.\n\n'
              '3. Passport\n'
              'If you are a foreign national and want to hire a car in Kerala, you need to upload the identification pages of your passport (both front and back) on the website or mobile app where you are booking the car.\n\n'
              '4. Payment Details (Credit/Debit card or UPI)\n'
              'If you are making an online payment, you will need to provide your credit card or debit card details. You will receive an acknowledgment of the online payment on your registered email ID.',
              style: TextStyle(color: Colors.white),
              trimLines: 2,
              trimCollapsedText: 'read more...',
              trimExpandedText: 'read less',)
          
        
    
      ],
    );
  }
}