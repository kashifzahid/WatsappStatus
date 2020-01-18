import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundStatus {


  setRoundStatus(context, IconData icon,String title) {
    return new GestureDetector(
      onTap: (){
        print("Container clicked");
      },
      child:Container(
        width: StatusTypeSize,
        height: StatusTypeSize,



        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Icon(icon, size: IconSize,color: Colors.green,),
            SizedBox(height: 5),
            Text(
              title,

              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
                color: Colors.green,

              ),
            ),
          ],
        ) ,



        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                blurRadius: 5.0, // has the effect of softening the shadow
                spreadRadius: 1.0, // has the effect of extending the shadow
                offset: Offset(
                  5.0, // horizontal, move right 10
                  5.0, // vertical, move down 10
                ),
              )
            ],
            shape: BoxShape.circle,
            color: Colors.white),
      ),
    );

  }
}
