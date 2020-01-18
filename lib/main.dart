import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watsappstatus/pages/VideoPlay.dart';
import 'package:watsappstatus/widget/drawer.dart';
import 'package:watsappstatus/pages/EventsPage.dart';
import 'package:watsappstatus/pages/NotesPage.dart';
import 'package:watsappstatus/pages/ContactsPage.dart';
import 'package:watsappstatus/pages/HomePage.dart';
import 'package:watsappstatus/routes/routes.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomesPage(),
  routes:  {
    Routes.homes: (context) => HomesPage(),
    Routes.contacts: (context) => ContactsPage(),
    Routes.events: (context) => EventsPage(),
    Routes.notes: (context) => NotesPage(),
    Routes.videos: (context) => VideoPlay(),
  },
));









