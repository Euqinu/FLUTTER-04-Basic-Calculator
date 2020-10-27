import 'package:flutter/material.dart';


class SmallCircle extends StatelessWidget{

  final GestureTapCallback onTap;
  final  iconData;

  const SmallCircle({Key key, this.onTap, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  InkResponse(
      onTap: onTap,
      child: (Container(

        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white30
        ),
        child:Center(
          child: Text(iconData,
            style: TextStyle(
              fontSize: 20
            ),
          ),
        )


      )),
    );
  }
}