import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_icons/flutter_icons.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    ),
  );
}
class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 20.0,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 183, 113, 140),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                height: MediaQuery.of(context).size.height / 2 - 20.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 211, 216),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 25,
              left: 15,
              child: Container(
                height: MediaQuery.of(context).size.height / 2 - 50,
                width: MediaQuery.of(context).size.width,
                child: ListView(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Periparation time',
                    style: TextStyle(
                      fontFamily: 'valera',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 22, 19, 11),
                    ),
                  ),
                  Text(
                    '5min',
                    style: TextStyle(
                      fontFamily: 'valera',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 22, 19, 11),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: Container(
                      height: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ingrediets',
                    style: TextStyle(
                      fontFamily: 'valera',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 22, 19, 11),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 110,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          buildIngredietItem(
                              'water',
                              Icon(Feather.droplet,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 86, 212, 218)),
                          buildIngredietItem(
                              'Brewd espreso',
                              Icon(Feather.target,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 27, 21, 98)),
                          buildIngredietItem(
                              'Sugar',
                              Icon(Feather.box,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 163, 43, 174)),
                          buildIngredietItem(
                              'Toffee Nut Syrup',
                              Icon(Feather.loader,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 6, 67, 14)),
                          buildIngredietItem(
                              'Natural flavors',
                              Icon(Feather.alert_circle,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 8, 228, 56)),
                          buildIngredietItem(
                              'Valina Syrup',
                              Icon(Feather.droplet,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 60, 60, 169)),
                          buildIngredietItem(
                              'gingible',
                              Icon(Feather.award,
                                  size: 10,
                                  color: Color.fromARGB(255, 233, 238, 240)),
                              Color.fromARGB(255, 195, 138, 47)),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      height: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 27, 6, 59),
                    ),
                    child: Center(
                      child: Text(
                        'Make Order',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'varela',
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                height: 0.5,
                color: Colors.black,
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 15,
                left: 75,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/coffee1.jpg'),
                    fit: BoxFit.cover,
                  )),
                )),
                Positioned(
                top: 25,
                left:15,  
                  child: Container(
              height: 300,
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
Row(
  crossAxisAlignment: CrossAxisAlignment.end,
children: [
  SizedBox(height: 10,),
  Container(
    child: Text('Ethiopian coffee',
    style: TextStyle(
fontSize: 30,
color: Colors.white,
fontWeight: FontWeight.bold,

    ),
    ),
  ),
    Container(
      decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(30),
      ),
    child: Icon(Icons.favorite,
color: Colors.white,
    ),
    ),
],
),

                ],
              ),
                  ),),
          ],
        ),
      ]),
    );
  }

  buildIngredietItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bgColor,
            ),
            child: Center(
              child: iconName,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 60,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'valera',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: bgColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
