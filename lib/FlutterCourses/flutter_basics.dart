import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FlutterBasics extends StatefulWidget {
  const FlutterBasics({super.key});

  @override
  State<FlutterBasics> createState() => _FlutterBasicsState();
}

class _FlutterBasicsState extends State<FlutterBasics> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'x0uinJvhNxI',
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
                                  ' FLUTTER BASICS',
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
                    '   Flutter Basics',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 7),
                    child: Text(
                      'Flutter is a free, open-source mobile application development framework created by Google. It is used to build high-performance, cross-platform mobile applications for Android, iOS, and other platforms, using a single codebase. Here are some of the basic concepts you need to understand when working with Flutter:\n',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      '1. Widgets:\n Widgets are the basic building blocks of Flutter applications.Every visual element in a Flutter app is a widget, from buttons and text to entire pages.\n2. Stateful and Stateless Widgets:\n Widgets in Flutter can be either stateful or stateless. Stateless widgets are immutable, meaning that their properties cannot be changed once they are created. Stateful widgets, on the other hand, have mutable state that can change during the lifetime of the widget.\n3. MaterialApp and Scaffold:\n MaterialApp is a widget that provides basic material design elements for your app, such as a navigation bar and theme. Scaffold is a widget that provides a basic structure for your app, including a top app bar, a bottom navigation bar, and a body. .\n4. Dart Programming Language:\n Flutter apps are written in the Dart programming language, which is also developed by Google. Dart is an object-oriented language that is easy to learn and has features such as type inference and garbage collection..\n5. Hot Reload:\n One of the key features of Flutter is hot reload, which allows you to make changes to your code and see the results immediately, without having to restart your app.',
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' NAVIGATION',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Navigation in Flutter allows you to move between different screens (or "routes") in your app. There are several ways to navigate between screens in Flutter, including:\n1.Push: The most common type of navigation is push navigation. This involves pushing a new route onto the navigation stack using the Navigator widgets push() method. When the user navigates back, the previous screen is popped off the stack. \n2. Pop: Popping a screen off the navigation stack is another type of navigation. This involves removing the top screen from the navigation stack using the Navigator widgets pop() method.\n3. Replacement: Replacement navigation involves replacing the current screen on the navigation stack with a new screen. This can be done using the Navigator widgets pushReplacement() method, which pushes a new screen onto the stack and removes the current screen from the stack. \n4. Named: Named navigation involves navigating to a screen using a named route. This involves defining a named route in the MaterialApp widgets routes property, and then navigating to that route using the Navigator widgets pushNamed() method.',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' RUNAPP',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'In Flutter, the runApp() function is used to start the application and render the root widget on the screen. The runApp() function takes a Widget as its argument, which is the root of the applications widget tree. This root widget can be any widget that you want to display on the screen when the app is launched.\n',
                      style: GoogleFonts.lato(),
                    ),
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
