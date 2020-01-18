import 'package:flutter/material.dart';
class MyAppBar {
  setAppBar(context, String title) {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      ),
       centerTitle: true,
      iconTheme: IconThemeData(color: Colors.lightGreen,size: 20),


    );
  }
}

