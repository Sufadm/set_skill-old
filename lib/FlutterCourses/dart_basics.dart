import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  _videoState createState() => _videoState();
}

class _videoState extends State<video> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: '5xlVP04905w',
      flags: const YoutubePlayerFlags(
        forceHD: false,
        autoPlay: false,
        hideThumbnail: false,
        disableDragSeek: false,
        loop: false,
      ),
    );

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
                                  ' DART BASICS',
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
                              margin: const EdgeInsets.only(left: 175),
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Dallas_Area_Rapid_Transit_logo.svg/1076px-Dallas_Area_Rapid_Transit_logo.svg.png'),
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
                    '   Dart Basics',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 7),
                    child: Text(
                      'Dart is a general-purpose programming language created by Google. It is used for building web, mobile, and desktop applications. Here are some basics of Dart programming:\n',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      '1. Data types: Dart supports various data types such as numbers (int, double), strings, booleans, lists, maps, and more\n2. Variables: In Dart, you can declare variables using the var keyword. The type of the variable is inferred by the Dart compiler.\n3. Functions: Functions in Dart are objects and can be assigned to variables or passed as arguments to other functions. You can define a function using the function keyword.\n4. Control flow statements: Dart provides various control flow statements such as if-else, switch, for, while, do-while, and more.\n5. Classes: Dart supports object-oriented programming and you can define classes and objects. You can define a class using the class keyword.',
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    ' DART PARAMETERS',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Text(
                      'Named Parameters:\nNamed parameters allow you to specify parameters by name when calling a function. They are defined by wrapping the parameter name in curly braces {} in the function definition. ',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Optional Parameters:\nOptional parameters allow you to define parameters that can be omitted when calling a function. They are defined by wrapping the parameter name in square brackets [] in the function definition\n',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  Text(
                    ' CONST',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'const is used to declare a compile-time constant. This means that the value of the variable is determined at compile-time and cannot be changed at runtime. const can be used to declare variables of primitive types, collections, and objects whose constructors are marked as const. ',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  Text(
                    ' FINAL',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'final is used to declare a variable whose value is fixed once it is initialized. This means that the value of a final variable can be determined at runtime, but once it is set, it cannot be changed. final can be used to declare variables of any type, including objects.',
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
