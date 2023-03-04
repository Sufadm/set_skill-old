import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Nodejs extends StatefulWidget {
  const Nodejs({super.key});

  @override
  State<Nodejs> createState() => _NodejsState();
}

class _NodejsState extends State<Nodejs> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'Oe421EPjeBE',
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
                                  ' NODEJS&EXPRESS',
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
                      'Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that enables developers to build scalable and high-performance applications. It was initially released in 2009 by Ryan Dahl and has since become one of the most popular technologies for web development.\n\nNode.js also comes with a package manager called npm, which allows developers to easily install, manage, and share third-party packages and libraries. This makes it easy to extend the functionality of Node.js and quickly build complex applications.',
                      style: GoogleFonts.lato(fontSize: 15),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Some of the key features of Node.js include:',
                        style: GoogleFonts.robotoSlab(
                            fontSize: 15, decoration: TextDecoration.underline),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '1. Fast and lightweight runtime\n2. Cross-platform support\n3. Easy scalability\n4. Large and active community\n5. Wide range of third-party modules and libraries available through npm.',
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
