// ignore_for_file: prefer_const_constructors
import 'package:first/about.dart';
import 'package:flutter/material.dart';
import 'detail.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';it co-
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dan Energy'),
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                setState(() {
                  var selectedItem = value.toString();
                  if (selectedItem == "About") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => about()),
                    );
                  }
                });
              },
              itemBuilder: (BuildContext bc) {
                return [
                  PopupMenuItem(
                    child: Text('About'),
                    value: 'About',
                  ),
                  PopupMenuItem(
                    child: Text('Log out'),
                    value: 'logout',
                  ),
                ];
              },
            )
          ],
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 15),
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Welcome,Alemu',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 17, 17),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/as.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.only(right: 45),
              child: Container(
                child: Text(
                  'choise the taste one that you want',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 160, 156),
                    fontFamily: 'nunito',
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Teste of the week',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 21, 20),
                    fontFamily: 'valera',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromARGB(255, 59, 58, 58),
                      fontFamily: 'nunito',
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 400,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    coffeeListedCard(
                        'assets/images/coffee1.jpg',
                        'Ethiopian coffee',
                        'Mexico',
                        'Whick is prepaired from pure Ethiopian coffe witt sogar',
                        '20 birr',
                        false),
                    coffeeListedCard(
                        'assets/images/kurt.jpg',
                        'Ox kurt',
                        'Senga tera',
                        'Whick is prepaired from pure Ethiopian coffe witt sogar',
                        '500 birr',
                        false),
                    coffeeListedCard(
                        'assets/images/genfo.jpg',
                        'Genfo',
                        'Bole',
                        'Whick is prepaired from pure Ethiopian coffe witt sogar',
                        '100 birr',
                        false),
                    coffeeListedCard(
                        'assets/images/frfr.jpg',
                        'Firfir',
                        'Megenagna',
                        'Whick is prepaired from pure Ethiopian coffe witt sogar',
                        '90 birr',
                        false),
                    coffeeListedCard(
                        'assets/images/enkulal.jpg',
                        'Enkulal',
                        'Shiromeda',
                        'Whick is prepaired from pure Ethiopian coffe witt sogar',
                        '150 birr',
                        false),
                  ]),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore nearby',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 21, 20),
                    fontFamily: 'valera',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromARGB(255, 59, 58, 58),
                      fontFamily: 'nunito',
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    buildImage('assets/images/kurt.jpg'),
                    buildImage('assets/images/baybet.jpg'),
                    buildImage('assets/images/enkulal.jpg'),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }

  buildImage(String imgPath2) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imgPath2),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  coffeeListedCard(String imgPath, String name, String place,
      String description, String price, bool isFavourite) {
    return Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
            height: 200,
            width: 220,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 330,
                    ),
                    Positioned(
                      top: 75,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        height: 260,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 143, 98, 95),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              place,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'nunito',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              description,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'nunito',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 17, 1, 1),
                                    fontFamily: 'varela',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavourite ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 60,
                        top: 25,
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover,
                              ),
                            ))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => detail()));
                  },
                  child: Container(
                    height: 50,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 31, 20, 91),
                    ),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'valera',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
