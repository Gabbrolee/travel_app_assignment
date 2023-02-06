import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          width: 40,
          height: 40,
          color: Colors.grey,
        )
      ),
      body: Column(
        children: <Widget>[
         
        ],
      ),
    );
  }
}
