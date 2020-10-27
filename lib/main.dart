import 'package:flutter/material.dart';
import './MyCalculator.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: MyCalculator(),


    ));
  }
}
