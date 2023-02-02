import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'main.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    ),
  );
}
class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
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
                if (selectedItem == "Back") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }
              });
            },
            itemBuilder: (BuildContext bc) {
              return [
                PopupMenuItem(
                  child: Text('Back'),
                  value: 'Back',
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              color: Color.fromARGB(255, 28, 19, 50),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.person_add,
                    color: Colors.amber,
                    size: 25,
                  ),
                  Text(
                    'Alemu Derebe',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'valera'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              color: Color.fromARGB(255, 28, 19, 50),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.amber,
                    size: 25,
                  ),
                  Text(
                    '+251936347251',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'valera'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              color: Color.fromARGB(255, 28, 19, 50),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.amber,
                    size: 25,
                  ),
                  Text(
                    'alemude21@gmail.com',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'valera'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
