import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetsBlog extends StatelessWidget {
  const WidgetsBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    'https://developer.android.com/static/images/appwidgets/widget-intro.png'),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'What is a widget?',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Widgets include the following:\n'),
                Text(
                  'icons;\npull-down menus\nbuttons;\nselection boxes;\nprogress indicators;\non-off checkmarks\nscroll bars;\nwindows;\nwindow edges that let you resize the window;\ndevices for displaying information and inviting, accepting and responding to user actions.',
                  style: GoogleFonts.lato(fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'More generally, the term widget is used to mean to any discrete object, usually of a mechanical nature and relatively small size. The term commonly is used to refer to gadgets that dont have a name or where someone cant remember the name.\n',
                  style: GoogleFonts.lato(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Widgets on smartphones',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'On both Apple iOS and Android devices, widgets present specific data that resides in an application running in the device. Each widget on an iPhone or other smartphone display presents selected bits of information that reside in the associated applications.\n',
                  style: GoogleFonts.lato(fontSize: 16),
                ),
                Text(
                  'For example, a user might wish to see baseball scores for only one team. The widget extracts the selected data from the app and displays it on the screen. Or a user might not want to read a detailed weather forecast, but would rather see only the key data points, such as the temperature and forecast. Weather data is compiled in a weather app and regularly updated. The weather widget is programmed to display only the specific data the user wants.',
                  style: GoogleFonts.lato(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
