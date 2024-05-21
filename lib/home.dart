// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App",style: TextStyle(
          color: Colors.blue,
          fontSize: 18
        ),),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("${counter}",style: TextStyle(
                  fontSize: 20
                ),),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });
            }, child: Icon(Icons.add)),
          )
        ],
      ),
    );
  }
}