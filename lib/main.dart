import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new TabBar1(),
    );
  }
}

class TabBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green[900],
        accentColor: Colors.white,
      ),
      home: new DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(
                  tabs: [
                    new Tab(icon: new Icon(Icons.directions_car),text: "Car",),
                    new Tab(icon: new Icon(Icons.directions_transit),text: "Transit",),
                    new Tab(icon: new Icon(Icons.directions_bike),text: "Bike",),
                  ]
              ),
              title: new Text("Travel With Vehicles"),
              centerTitle: true,
            ),
            body: new TabBarView(
                children: [
                  new Icon(Icons.directions_car),
                  new Icon(Icons.directions_transit),
                  new Icon(Icons.directions_bike),
                ]
            ),
          )
      ),
    );
  }
}

