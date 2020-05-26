import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

//////////////////////////////////////////////////////////////////////////// Main Page ///////////////////////////////////////////////////////////////////////
class MyApp extends StatefulWidget {
  MyHomePageState createState() => MyHomePageState();
}
class MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          title: Text("Welcome To My Profile"),
        ),
        body: new Column(
          children: <Widget>[
            new Text("Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            avatar,
            FavoriteWidget(),
            Icconbar(),
            text,
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////// Avatar //////////////////////////////////////////////////////////////////////
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

//////////////////////////////////////////////////////////////////////////////// Title //////////////////////////////////////////////////////////////////////
// #Title, Name, Location
class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
class _FavoriteWidgetState extends State<FavoriteWidget> {
  var _name;
  final nameCon = new TextEditingController();
  bool starr = false;
  int counter = 0;
  bool styleObj = false;
  void togfav(){
    setState(() {
      if(starr){
        counter += 1;
        starr = false;
        styleObj = false;
      }
      else{
        counter += 1;
        starr = true;
        styleObj = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: new Container(
            padding: const EdgeInsets.only(top: 10,left: 20, right: 1),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(15),
                  child: new Column(
                    children: <Widget>[
                      TextField(
                        controller: nameCon,
                        maxLength: 20,
                        autofocus: true,
                        cursorColor: Colors.amber,
                        cursorWidth: 5.0,
                        style: TextStyle(
                          height: 1.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter Your name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.amber,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            _name = nameCon.text;
                          });
                        },
                        child: Text("Set"),),
                    ],


                  ),
                ),
                Container(
                  child: Text(
                    "$_name",
                    style: styleObj
                        ? TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold, fontSize: 20.0)
                        : TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
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
        Container(
          padding: const EdgeInsets.only(right: 20, top: 150),
          child: IconButton(
            icon: (starr ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: togfav,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 20, top: 150),
          child: Text('$counter'),
        ),
      ],
    );
  }
}


/////////////////////////////////////////////////////////////////////////////// Buttons //////////////////////////////////////////////////////////////////////
// #Buttons
class Icconbar extends StatefulWidget{
  _Icconbar createState() => _Icconbar();
}
class _Icconbar extends State<Icconbar>{
  _launchURL() async {
    const url = 'https://www.shahandanchor.com/home/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
   return new Row(
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
           //backgroundColor: Colors.blue,
           child: Icon(Icons.share), onPressed:_launchURL),
     ],
   );
  }
}



//////////////////////////////////////////////////////////////////////////////// About  //////////////////////////////////////////////////////////////////////
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


