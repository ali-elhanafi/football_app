import 'package:flutter/material.dart';
import 'package:football/api-manager.dart';
import 'package:football/pagebody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFF3949AB),
        elevation: 0.0,
        title: Text(
          "Premier League",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      ///call api services
      body: FutureBuilder(
        //call api method()
        future: SoccerApi().getAllMatches(),
        //layout builder
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print((snapshot.data).length);
            return PageBody(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
