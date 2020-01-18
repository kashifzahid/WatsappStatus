import 'package:flutter/material.dart';
import 'package:watsappstatus/widget/drawer.dart';
import 'package:watsappstatus/widget/app_bar.dart';

class NotesPage extends StatelessWidget {
  static const String pageName='Notes';
  static const String routeName = '/'+pageName;

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: MyAppBar().setAppBar(context, pageName),
        drawer: AppDrawer(),
        body: Center(


            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
              TextFormField(
                controller: myController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),



                  labelText: 'Enter your name'
              ),
                ),
               FlatButton(
                 color: Colors.green,

                 onPressed:(){


                return showDialog(
                context: context,
                 builder: (context) {
                   return AlertDialog(
    // Retrieve the text the user has entered by using the
    // TextEditingController.
                 content: Text(myController.text),
                      );
                         },
                       );

                 }, child: null,
               )

                ],
              ),
            ),
        ),
    );
  }
}