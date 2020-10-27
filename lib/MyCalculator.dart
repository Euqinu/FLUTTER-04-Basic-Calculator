import 'package:flutter/material.dart';
import './SmallCircle.dart';

class MyCalculator extends StatefulWidget{
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  var first,second,result;
  TextEditingController num1=TextEditingController(text: "0");
  TextEditingController num2=TextEditingController(text: "0");
  //TextEditingController output=TextEditingController(text: "$result");

  void getAdd(){
    setState(() {
      first=int.parse(num1.text);
      second=int.parse(num2.text);
      result= first + second;
    });
  }

  void getDiff(){
    setState(() {
      first=int.parse(num1.text);
      second=int.parse(num2.text);
      result=first-second;
    });
  }

  void getMult(){
    setState(() {
      first=int.parse(num1.text);
      second=int.parse(num2.text);
      result=first*second;
    });
  }

  void getDiv(){
    setState(() {
      first=int.parse(num1.text);
      second=int.parse(num2.text);
      result=first/second;
    });
  }
  @override
  Widget build(BuildContext context){
    return(
        Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    controller: num1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter first number",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: num2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter second number"
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children:[
                      Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.circle,

                      ),
                    ),
                      Positioned(
                        top: 10,
                       left: 80,
                       child: SmallCircle(onTap:()=>getAdd(),iconData:'+'),
                      ),
                      Positioned(
                        top: 80,
                        left: 10,
                        child: SmallCircle(onTap:()=>getMult(),iconData:'*'),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 80,
                        child: SmallCircle(onTap:()=>getDiff(),iconData:'-'),
                      ),
                      Positioned(
                        top: 80,
                        right: 20,
                        child: SmallCircle(onTap:()=>getDiv(),iconData:'/'),
                      ),

              ]
                  ),
                  SizedBox(height: 30),
//                TextField(
//                  controller: output,
//                  enabled: false,
//
//                  decoration: InputDecoration(
//                    border: OutlineInputBorder(),
//                    //labelText: 'Output'
//                  ),
//                )
                Text('$result')
                ],
              ),
            ),
          ),
        ),
      )
    ));
  }
}