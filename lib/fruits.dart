import 'package:flutter/material.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              children: <Widget>[
                getFoodCard(
                  'assets/images/picone.jpeg',
                  'Orange',
                  '0.75',
                  true,
                ),
                getFoodCard(
                  'assets/images/pictwo.jpeg',
                  'Kiwi',
                  '0.25',
                  false,
                ),
                getFoodCard(
                  'assets/images/picthree.jpeg',
                  'Banana',
                  '0.75',
                  true,
                ),
                SizedBox(height: 15),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 25),
                getFoodCard(
                  'assets/images/picfour.jpeg',
                  'Pineapple',
                  '0.25',
                  false,
                ),
                getFoodCard(
                  'assets/images/picfive.jpeg',
                  'Lemon',
                  '0.75',
                  true,
                ),
                getFoodCard(
                  'assets/images/picone.jpeg',
                  'Banana',
                  '0.25',
                  false,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget getFoodCard(
    String imgPath,
    String fruitName,
    String price,
    bool isFav,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Container(
        height: 200,
        width: (MediaQuery.of(context).size.width / 2) - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: isFav
                        ? Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.redAccent,
                          ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              fruitName,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$$price each',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
