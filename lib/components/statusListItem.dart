import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StatusItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.025 ),
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.elliptical(40.0, 10.0),
          bottomLeft: new Radius.circular(20.0),
        ),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey[300],
            offset: new Offset(2.0, 3.0),
            spreadRadius: -1,
            blurRadius: 1,
          )
        ],
      ),






      child: Row(

        children: <Widget>[


            Image.asset(
"download1.jpg",width: MediaQuery.of(context).size.width*0.30 ,fit: BoxFit.fill,),

          Container(
            width: MediaQuery.of(context).size.width*0.65,

        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text('yes yes yes'),
            Text('no no no'),
            SizedBox(height: 20),

          ],
        ),
      ),








        ],
      ),
    );
  }
}
