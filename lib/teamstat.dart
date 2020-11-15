import 'package:flutter/material.dart';

Widget teamStat(String team, String logoUrl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(
          height: 3.0,
        ),
        Expanded(
          child: Image.network(
            logoUrl,
            width: 60.0,
            
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  );
}
