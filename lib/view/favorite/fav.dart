
import 'package:enoikiou/controller/favoriecontroller.dart';
import 'package:flutter/material.dart';


class Favoritescreen extends StatefulWidget {
  Favoritescreen({super.key});

  @override
  State<Favoritescreen> createState() => _FavoritescreenState();
}

class _FavoritescreenState extends State<Favoritescreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Favoritecontroller.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:  Colors.black ,
        title: Text(
          "Favorite",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                final favoritItems = finalList[index];
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
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              height: 150,
                              width: 90,
                              decoration: BoxDecoration(
                                // 
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Image.network(
                                favoritItems.image,fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  favoritItems.title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  favoritItems.category,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "\$${favoritItems.price}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            finalList.removeAt(index);
                            setState(
                              () {},
                            );
                          },
                          child:
                              Icon(Icons.delete, color: Colors.red, size: 25),
                        ),
                        GestureDetector()
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
