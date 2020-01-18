import 'package:flutter/material.dart';
import 'package:watsappstatus/components/roundImageItem.dart';
import 'package:watsappstatus/components/roundtypeitem.dart';

import 'package:watsappstatus/widget/drawer.dart';
import 'package:watsappstatus/widget/app_bar.dart';

import '../constants.dart';

class HomesPage extends StatelessWidget {

  static const String pageName='Home';
  static const String routeName = '/'+pageName;




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyAppBar().setAppBar(context, 'W Status'),

      drawer: AppDrawer(),
      body: Container(

        margin: EdgeInsets.symmetric(horizontal: 0.0,vertical: BodyTopMargin),

        child: Column(




          children: <Widget>[
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RoundStatus().setRoundStatus(context, Icons.queue_music, MUSIC),
                new RoundStatus().setRoundStatus(context, Icons.video_library, VIDEOS),
                new RoundStatus().setRoundStatus(context, Icons.tag_faces, EMOTION),



              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0,vertical: BodyTopMargin) ,
              child : Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Text('-----------', style: TextStyle(
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,

                  ),
                  ),
                  SizedBox(height: 5),
                  Text(
                   MUSIC,

                    style: TextStyle(
                      fontSize: 25.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0.0,horizontal: 20.0),


              child: Column(
                children: <Widget>[



                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundImageItem().setRoundImageItem(context, 'download1.jpg',TEST_IMAGE_TITLE ),
                      RoundImageItem().setRoundImageItem(context, 'download1.jpg',TEST_IMAGE_TITLE ),
                      RoundImageItem().setRoundImageItem(context, 'sc.png',TEST_IMAGE_TITLE ),


                    ],
                  ),
                  Row(


                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundImageItem().setRoundImageItem(context, TEST_IMAGE,TEST_IMAGE_TITLE ),
                      RoundImageItem().setRoundImageItem(context, TEST_IMAGE,TEST_IMAGE_TITLE ),




                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),

      backgroundColor: Colors.white,

    );
  }


}