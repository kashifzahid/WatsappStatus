import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watsappstatus/pages/ContactsPage.dart';
import 'package:watsappstatus/pages/EventsPage.dart';
import 'package:watsappstatus/pages/HomePage.dart';
import 'package:watsappstatus/pages/NotesPage.dart';
import 'package:watsappstatus/routes/routes.dart';
import '../constants.dart' as Constants;
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(
              icon: Icons.home,
              text: HomesPage.pageName,
              onTap: () => TapCalled(context,Routes.homes),

            ),
            _createDrawerItem(
                icon: Icons.contacts,
                text: ContactsPage.pageName,
               onTap: () => Navigator.pushReplacementNamed(context, Routes.contacts),

            ),

            _createDrawerItem(icon: Icons.event, text: EventsPage.pageName,
            ),
            _createDrawerItem(icon: Icons.note, text: NotesPage.pageName,
                onTap: () => TapCalled(context,Routes.notes)),
            Divider(),
            _createDrawerItem(icon: Icons.video_library, text:           'Video',
                onTap: () => TapCalled(context,Routes.videos)),
            _createDrawerItem(icon: Icons.face, text: 'Authors'),
            _createDrawerItem(icon: Icons.account_box, text: 'Flutter Documentation'),
            _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
            Divider(),
            _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
            ListTile(
              title: Text('0.0.1'),
              onTap: () {},
            ),
          ],
        ),
        color: Colors.green,
      ),


    );
  }

 Widget _createHeader() {
   return DrawerHeader(
     child: Container(
       child:Center(
         child: Column(
           children: <Widget>[

             SizedBox(height: 10),
             CircleAvatar(
               radius: Constants.ImageSize,
               backgroundColor: Colors.black12,




             ),
             SizedBox(height: 5),
             Text(
               'Name',
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.white,
               ),
             )

           ],


         ),
       ),
     ),
     decoration: BoxDecoration(
       color: Colors.green,
     ),

   );

  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(

      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Icon(icon,color: Colors.white,),
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontStyle: FontStyle.italic

            ),),
          )
        ],
      ),
      onTap: onTap,
    );
  }
  TapCalled(context,String page){
    Navigator.pushReplacementNamed(context,page);

  }
}