
import 'package:flutter/material.dart';
import 'package:watsappstatus/widget/drawer.dart';
import 'package:watsappstatus/widget/app_bar.dart';

class EventsPage extends StatelessWidget {
    static const String pageName='Events';
  static const String routeName = '/'+pageName;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: MyAppBar().setAppBar(context, pageName),
        drawer: AppDrawer(),
        body: Center(child: Text(pageName)));
  }
}