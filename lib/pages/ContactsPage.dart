import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:watsappstatus/components/statusListItem.dart';
import 'package:watsappstatus/widget/drawer.dart';
import 'package:watsappstatus/widget/app_bar.dart';


class ContactsPage extends StatelessWidget {

  static const String pageName='Contacts';
  static const String routeName = '/'+pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar().setAppBar(context, pageName),
        drawer: AppDrawer(),
        body: Container(
          child: Column(
           


          children: <Widget>[
            Container(


            
            ),




             Column(



                children: <Widget>[
                  StatusItem(),
                  SizedBox(height: 5),
                  StatusItem(),
                  SizedBox(height: 20),
                  StatusItem(),
                ],

             )
          ],
        )
        ),
    );
  }
}