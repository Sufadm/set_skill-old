import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Javascript extends StatefulWidget {
  const Javascript({super.key});

  @override
  State<Javascript> createState() => _JavascriptState();
}

class _JavascriptState extends State<Javascript> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'PkZNo7MFNFg',
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
                                  ' JAVASCRIPT',
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
                              margin: const EdgeInsets.only(left: 190),
                              child: Image.network(
                                  'https://global-uploads.webflow.com/618fa90c201104b94458e1fb/623d8cf285bb1c12332d0f10_Monogram%20(1).jpg'),
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
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      'MERN stack is a combination of four technologies: MongoDB, Express.js, React, and Node.js. It is a popular web development stack used for building scalable and robust web applications. Heres a brief overview of each technology:\n\n1. Object-oriented: JavaScript is an object-oriented language, which means it uses objects to represent data and behavior.\n2. Dynamic: JavaScript is a dynamic language, which means that it can adapt to changes in real-time. This makes it well-suited for creating interactive web pages and web applications.\n3. Interpreted: JavaScript is an interpreted language, which means that it is executed directly by the browser or server, without the need for compilation.\n4. Event-driven: JavaScript is an event-driven language, which means that it responds to user interactions and events, such as mouse clicks, keyboard input, and touch events.\n5. Cross-platform: JavaScript can be executed on multiple platforms, including web browsers, servers, and mobile devices.',
                      style: GoogleFonts.lato(fontSize: 15),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Some of the common uses of JavaScript include:',
                        style: GoogleFonts.robotoSlab(
                            fontSize: 15, decoration: TextDecoration.underline),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '1. Adding interactivity to web pages: JavaScript can be used to create dynamic effects, such as pop-ups, drop-down menus, and image sliders.\n\n2. Validating user input: JavaScript can be used to validate user input on web forms to ensure that it meets certain requirements, such as minimum length or format.\n\n3. Creating animations: JavaScript can be used to create animations and visual effects on web pages, such as scrolling text, rotating images, and fading effects.\n\n4. Building web applications: JavaScript is used extensively in building web applications, such as social media platforms, e-commerce sites, and online games.',
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
