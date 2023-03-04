import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MernBasics extends StatefulWidget {
  const MernBasics({super.key});

  @override
  State<MernBasics> createState() => _MernBasicsState();
}

class _MernBasicsState extends State<MernBasics> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: '-0exw-9YJBo',
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
                                  ' MERNSTACK BASICS',
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
                              margin: const EdgeInsets.only(left: 130),
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
                      'MERN stack is a combination of four technologies: MongoDB, Express.js, React, and Node.js. It is a popular web development stack used for building scalable and robust web applications. Heres a brief overview of each technology:\n\n1. MongoDB: It is a NoSQL database that stores data in a JSON-like format called BSON (Binary JSON). MongoDB is known for its flexibility, scalability, and ease of use.\n2. Express.js: It is a backend web application framework built on top of Node.js. It provides a robust set of features for building web applications and APIs, including routing, middleware, and template engines.\n3. React: It is a front-end JavaScript library for building user interfaces. React allows developers to build reusable UI components and provides a fast and efficient way to update the UI.\n4. Node.js: It is a server-side JavaScript runtime built on Chromes V8 JavaScript engine. Node.js allows developers to build scalable and fast web applications using JavaScript on both the server and client-side.',
                      style: GoogleFonts.lato(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'When combined, these technologies provide a full-stack solution for building web applications, from the front-end to the back-end. The MERN stack is a popular choice for building modern web applications, especially those that require real-time updates and interactions with users.',
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
