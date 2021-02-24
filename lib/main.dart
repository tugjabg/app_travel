import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                  child: Image.asset(
                    "assets/lake.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20)
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Oeschinen Lake Campground',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              'Kandersteg, Switzerland',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star, color: Colors.red, size: 30,
                          ),
                          Text(
                            '41',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.call, size: 35, color: Colors.blue),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text('Call', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.w400),)
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.headset, size: 35, color: Colors.blue),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text('Head', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.w400),)
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              Icon(Icons.share, size: 35, color: Colors.blue),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text('Share', style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.w400),)
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}