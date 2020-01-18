import 'package:flutter/material.dart';

import '../constants.dart';

class RoundImageItem {


  setRoundImageItem(context, String img,String title) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child : Column(
        children: <Widget>[


         new  CircleAvatar(
          radius: ImageSize,
          backgroundImage: AssetImage(img),
         ),


           SizedBox(height: 5),

          Center (child:Text(title, style: Theme.of(context).textTheme.body2,),),
    ],
    ),

    );

  }
}