import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        actions: <Widget>[IconButton(icon: Icon(Icons.add,), color: Colors.black, onPressed: null,),],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          TopSection(),
          SizedBox(height: 35,),
          BodySection(),
        ],
      ),
    );
  }
}


class TopSection extends StatelessWidget {

Widget _avatorItem(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        height: 60,
        width: 60,
      ),
      SizedBox(height: 5),
      Text("James", style: TextStyle(fontSize: 12))
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Find Friend", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _avatorItem(),
            _avatorItem(),
            _avatorItem(),
            _avatorItem(),
          ],
        ),
      ],
    );
  }
}

class BodySection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Title
        Text("Life Circle", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,)),
        SizedBox(height: 10),
        // List item
        ListItem(),
        ListItem(),
        ListItem(),
      ],
    );
  }
}

class ListItem extends StatelessWidget {

  Widget _topSection(){
    return Row(
          children: <Widget>[
            CircleAvatar(radius: 15),
            SizedBox(width: 7),
            Text("Balderston", style: TextStyle(fontSize: 12, fontWeight:FontWeight.w500)),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.grey, size: 17,),
                      Text("location", style: TextStyle(fontSize: 12, color: Colors.grey),)
                    ],
                  ),
                ),
              ),
            )
          ],
        );
  }

  Widget _centerSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.only(topLeft: Radius.circular(17), bottomLeft: Radius.circular(17),),),
          height: 170,
          width: 258,
        ),
        Container(
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.only(topRight: Radius.circular(17),)),
                height: 81,
                width: 105,
              ),
              
              Container(
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(bottomRight: Radius.circular(17),)),
                height: 81,
                width: 105,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.35,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(bottomRight: Radius.circular(17),)),
                        height: 81,
                        width: 105,
                        
                      ),
                    ),
                    Center(
                          child: Text("+8", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15, letterSpacing: 1.5),),
                        ),
                  ],
                ),
              ),

            ],
          ),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _topSection(),
        SizedBox(height: 7),
        _centerSection(),
        SizedBox(height: 8),
        Text("This is my favorite island to visit.", style: TextStyle(fontSize: 13),),
        SizedBox(height: 15),
      ],
    );
  }
}