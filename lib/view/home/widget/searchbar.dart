import 'package:flutter/material.dart';


class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white70,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: 
      Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 10),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search ", border: OutlineInputBorder(
                    borderRadius:
                     BorderRadius.all(
                      Radius.circular(20)))),
            ),
          ),
          
        ],
      ),
    );
  }
}