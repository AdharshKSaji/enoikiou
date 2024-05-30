import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class RulesAndRegulation extends StatelessWidget {
  const RulesAndRegulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(height: 25,width: 160,
            decoration: BoxDecoration(borderRadius: 
           BorderRadius.circular(10),color: Colors.white ),child: Text("  TERMS & CONDITION",style: 
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
        ),SizedBox(height: 20,)
        ,

        ReadMoreText('CAR RENTAL TERMS\n\n'
              'In addition to the vehicle, the following items are included in the car rental: All tires, tools, documents, accessories, as well as equipment. '
              'The renter agrees to all conditions and terms printed on this contract and to the information written on the contract with the same number and date as these car rental terms.\n\n'
              '1. The renter fully agrees to the terms and conditions of this contract and has received a copy thereof.\n\n'
              '2. The renter has received the mentioned vehicle and its accessories in proper and safe condition.\n\n'
              '3. The renter agrees to return the vehicle to the lessor on the agreed date and place, as written in the contract, or earlier if the lessor so insists. Should the vehicle not be returned on the agreed time, a fee equal to 1/3 of the daily rate shall be charged for each hour of delay.\n\n'
              '4. Liability and driver insurance are according to Icelandic law. Third party liability insurance shall be equivalent to the amount stipulated by the car\'s insurance company at each time. The renter\'s own liability for damages on the car is limited to the worth of the car. The renter can limit his liability by purchasing a collision damage waiver (CDW) for a fixed amount which is determined each time by the lessor. The driver liability in excess of ISK 220,000 for 2WD and 330,000 for 4WD and vans.\n\n'
              '5. The collision damage waiver (CDW) does not cover:\n'
              '  a) Damages done on purpose or by total carelessness of the driver.\n'
              '  b) Damages caused when the driver is intoxicated, under the influence of drugs, or by any other cause which renders him unfit to safely drive a vehicle.\n'
              '  c) Damages to the engine caused by water, such as when crossing un-bridged rivers or driving in water.\n'
              '  d) Damages which occur while the car is being raced or test-driven.\n'
              '  e) Damages caused through war activity, mutiny, riots, and uproar or by sabotage.\n'
              '  f) Burns on seats, carpets, or floor mats.\n'
              '  g) Damages to wheels, tires, springs, batteries, glass (lights & windows), and radio as well as damages caused by theft of certain parts of the vehicle.\n'
              '  h) Damages caused by driving on bumpy roads on parts such as: transmission, drive shafts, or other parts in or on the vehicle\'s undercarriage. Damages which occur on the undercarriage when the vehicle hits uneven roads, such as ridges left by road planers, or rocks stuck in the road or the roadside. Same applies to damages which occur when loose rocks or other items hit the vehicle while it is being driven.\n'
              '  i) Damages caused when the vehicle is driven where driving is forbidden, also by driving off-road, on trails not marked on charts as normal roads, on snow piles, on ice, over un-bridged rivers or streams, on beaches, in dirt or on any other kind of off-roads.\n'
              '  j) Damages when sand, gravel, ash, lava or other earth materials are blown on the vehicle.\n'
              '  k) Should the vehicle be moved by sea, damages caused to it by the ocean water will not be paid.\n'
              '  l) Damages caused by the wind blowing up the door while opening it.\n'
              '  m) Other cases are referred to the general conditions of the comprehensive vehicle insurance.\n\n'
              '6. SUPER CDW: CDW covers damages to the rental vehicle; it waives liability in case of any damages to the vehicle in excess of ISK 220,000 for 2WD and ISK 330,000 for 4WD and vans. But when you take Super CDW you change that to ISK 100,000 for 2WD and 160,000 ISK for 4WD and vans. Super CDW is available for ISK 1,300 per day. But no insurance covers damages to the underside of the car.\n\n'
              '7. The car must be operated and driven with great care. The renter shall be liable for all damage to the car and injury sustained by passengers caused by collision or accident, which is not paid by the insurance company of the vehicle.\n\n'
              '8. In case of a collision or accident, the renter must report it instantly to law enforcement authorities and to the lessor, and must not leave the scene of the accident or collision until such action has been taken and after the police have arrived on the scene.\n\n'
              '9. Renter shall return the vehicle to the office of the lessor which has been agreed upon at the beginning of the rental period, along with all tires, tools, accessories, and equipment in the same condition as it was when received, though ordinary wear and tear is accepted. Lessor may repossess the vehicle without notice at any time if it is illegally parked, used in violation of law, against the terms of this agreement or is apparently abandoned.\n\n'
              '10. Under no circumstances is it permitted to use the vehicle, operate, or drive:\n'
              '  a) In violation of Icelandic law, or the conditions and terms of this contract.\n'
              '  b) For the transportation of passengers or property against payment.\n'
              '  c) To propel or tow any vehicle, trailer or other objects.\n'
              '  d) By any person other than the renter signing this contract, unless by written consent of lessor.\n'
              '  e) Off-roads, that is roads that are not marked as normal driving roads on a road map.\n\n'
              '11. Any violation of Icelandic law, or of any of the terms or conditions of this contract, by the renter or any other driver which the renter has granted permission to operate or drive the vehicle, renders the renter fully responsible for all damages done to the vehicle whatever the cause may be.\n\n'
              '12. The number of kilometers (km) the vehicle is driven while this contract is valid is decided by reading the standard km reading device (speedometer) attached to the vehicle by the manufacturer. Renter shall report immediately if the speedometer is not working or ceases to function during the rental period.\n\n'
              '13. Lessor shall not be liable for disappearance or damage to any property left, stored, or transported by renter or other persons, in or on the vehicle, either before or after it has been returned to lessor.\n\n'
              '14. Renter agrees to pay lessor on demand:\n'
              '  a) Deposit of the probable rental cost.\n'
              '  b) All expenses incurred by lessor in returning the vehicle back to lessor\'s station, if it has been left somewhere else, regardless of condition of the vehicle, roads, or weather.\n'
              '  c) A sum equal to the value of all the tires (regardless of road conditions), the tools and accessories which have been damaged, lost, or stolen from the vehicle.\n\n'
              '15. Renter is not authorized to have the vehicle or its accessories repaired or altered. The renter shall not permit any lien to be placed upon the vehicle without lessor\'s prior consent. Renter shall pay all unauthorized charges in connection with the use, repairs, or safekeeping of the vehicle.\n\n'
              '16. The rental fee is paid upfront. Discount agreed upon from that fee will be discontinued on the 10th day of the following month. From that day highest possible monthly interest will be added to the whole sum. VAT will be added to the discontinued discount. If it is written in the rental contract that discount is to be granted from the rental fee, this discount will be discontinued if renter causes injuries to another party or damages the vehicle and is not 100% in the right.\n\n'
              '17. Renter agrees to pay all costs which lessor may incur in collecting payment by law. Renter\'s self risk with Gravel Protection is 20,000 ISK.\n\n'
              '18. Any legal proceedings arising from this contract shall be conducted before the Reykjavik Municipal Court without prior submission to a board of conciliation.\n\n'
              '19. All cars must be returned with a full tank of gas. Service for refuel is 2,500 ISK.\n\n'
              '20. Renter agrees to pay all costs to lessor incurred in collecting payment from renter. A credit card number or imprint is taken at the start of all rentals for security reasons. It may be used to pay all extra charges, including extra kilometers, extra days, extra insurance, parking fines, refilling gasoline, damages or any cost due to the car rental as a result of the renter\'s use of the car.\n\n'
              'CANCELLATION POLICY:\n'
              'If you cancel 15 days or more before pick-up time:\n''- you pay nothing or you get 100% refund of what you have already paid.\n\n'
              'If you cancel 14 days before pick-up time:\n'
              '- you pay 20% of the total or you get 80% refund if you have already paid.\n\n'
              'If you cancel 48 hours before pick-up time or a no-show:\n'
              '- you pay 80% of the total or you get 20% refund if you have already paid.',
              style: TextStyle(color: Colors.white),
              trimLines: 1,
              trimCollapsedText: 'read more...',
              trimExpandedText: 'read less',)
          
        
    
      ],
    );
  }
}