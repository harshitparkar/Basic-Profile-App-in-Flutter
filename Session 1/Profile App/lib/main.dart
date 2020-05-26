import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Welcome To My Profile"),
        ),
       body: new Column(
         children: <Widget>[
           new Text("Welcome",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 15,
           ),),
           avatar,
           title,
           buttonbar,
           text,
         ],
       ),
      ),
    );
  }
}

// #AVATAR PIC
Widget avatar = Container(
  padding: const EdgeInsets.all(7),
  child: new Center(
    child: new CircleAvatar(
      backgroundImage: AssetImage("image/avt.jpg"),
      radius: 90,
    ),
  ),
);

// #Title, Name, Location
Widget title = Container(
  padding: const EdgeInsets.only(top: 10,left: 20, right: 20),
  child: new Row(
    children: <Widget>[
      Expanded(
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Harshit Parkar",
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
                Text(
                    "Sakec",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
      ),
      Icon(Icons.star, color: Colors.red,),
      Text("5"),
    ],
  ),

);

// #Buttons
Widget buttonbar = Container(
  padding: const EdgeInsets.all(30),
  child: new Row(
    children: <Widget>[
      Expanded(
          child: new Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: (){},
                    child: Icon(Icons.call)),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: (){},
                    child: Icon(Icons.room)),
                FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: (){},
                    child: Icon(Icons.share)),
              ],
            ),
          )
      ),
    ],
  ),
);

// #About
Widget text = Container(
  padding: const EdgeInsets.all(20),
  child: new Center(
    child: new Column(
      children: <Widget>[
        Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
          style: TextStyle(
            fontSize: 10,
          ),)
      ],
    ),
  ),
);

