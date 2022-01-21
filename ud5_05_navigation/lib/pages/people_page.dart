import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_navigation_routes/models/peopleResponse.dart';


class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// ignore: unused_element
class _MyHomePageState extends State<PeoplePage> {
  List<Data> items = Data.fromJson(jsonDecode('{"https://api.disneyapi.dev/characters')).results;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Text(items.elementAt(index).name);
          },
        ),
    );
    
  }
}