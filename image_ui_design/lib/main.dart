import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1516726817505-f5ed825624d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF000000),
                      Color(0x00000000),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Text(
                      "FASHION OUTWEAR #Trending ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        ActionChip(
                          label: Text(
                            "WOMEN",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          backgroundColor: Colors.orangeAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ActionChip(
                          label: Text(
                            "SUMMER",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          backgroundColor: Colors.blueAccent,
                        ),
                         SizedBox(
                          width: 10,
                        ),
                        ActionChip(
                          label: Text(
                            "TRENDING⚡",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
