import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'kj_tldMmu4w',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.landscape) {
        return Scaffold(
          body: youtubeHierarchy(),
        );
      } else {
        return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  ' WIDGETS',
                                  style: GoogleFonts.robotoMono(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '   4.5 ⭐',
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '  10.5k Learners',
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 150),
                              child: Image.network(
                                  'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-goog/events/flutter-logo-5086DD11C5-seeklogo.com__JBIGT4S.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  youtubeHierarchy(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' WIDGETS',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Text widget - Used to display text on the screen.\nImage widget - Used to display images on the screen.\nContainer widget - Used to group and style other widgets.\nTextField widget - Used to create input fields for users to enter text.\nListView widget - Used to display a list of items on the screen\nAppBar widget - Used to create a navigation bar at the top of the screen.\nScaffold widget - Used to create a basic layout for an app.\nGridView - A widget for displaying a grid of items, which can be built dynamically using a builder function. ',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' BUTTONS',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Buttons are one of the most important user interface elements in any application, and Flutter provides several widgets for creating different types of buttons. In general, a button is a graphical user interface element that the user can interact with to trigger an action or event.\n1. TextButton: A simple button that contains a text label.\n2. ElevatedButton: A button with a raised appearance that can be used to highlight important actions.\n3. OutlinedButton: A button with an outline that can be used to indicate secondary actions.\n4. IconButton: A button that contains an icon.\n',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ));
      }
    });
  }

  youtubeHierarchy() {
    return Align(
      child: FittedBox(
        fit: BoxFit.fill,
        child: YoutubePlayer(
          aspectRatio: 16 / 9,
          controller: _controller,
        ),
      ),
    );
  }
}
