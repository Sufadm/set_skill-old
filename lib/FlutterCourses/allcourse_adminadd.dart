import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FlutterAllCourse extends StatefulWidget {
  final String coursename;
  final String logolink;
  final String youtubeid;
  final String blog;
  final String totaltime;
  final int index;
  const FlutterAllCourse(
      {super.key,
      required this.coursename,
      required this.logolink,
      required this.youtubeid,
      required this.blog,
      required this.totaltime,
      required this.index});

  @override
  State<FlutterAllCourse> createState() => _FlutterAllCourseState();
}

class _FlutterAllCourseState extends State<FlutterAllCourse> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.youtubeid,
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
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
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      widget.coursename,
                                      style: GoogleFonts.robotoMono(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
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
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 175),
                                  child: Image.network(widget.logolink),
                                ),
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
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        widget.coursename,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 7),
                      child: Text(
                        widget.blog,
                        style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(
                    //     left: 10,
                    //   ),
                    //   child: Text(
                    //     '',
                    //     style: GoogleFonts.lato(),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // Text(
                    //   ' DART PARAMETERS',
                    //   style: GoogleFonts.robotoMono(
                    //       fontWeight: FontWeight.bold, fontSize: 17),
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 12),
                    //   child: Text(
                    //     'Named Parameters:\nNamed parameters allow you to specify parameters by name when calling a function. They are defined by wrapping the parameter name in curly braces {} in the function definition. ',
                    //     style: GoogleFonts.lato(),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 12),
                    //   child: Text(
                    //     'Optional Parameters:\nOptional parameters allow you to define parameters that can be omitted when calling a function. They are defined by wrapping the parameter name in square brackets [] in the function definition\n',
                    //     style: GoogleFonts.lato(),
                    //   ),
                    // ),
                    // Text(
                    //   ' CONST',
                    //   style: GoogleFonts.robotoMono(
                    //       fontWeight: FontWeight.bold, fontSize: 17),
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 12),
                    //   child: Text(
                    //     'const is used to declare a compile-time constant. This means that the value of the variable is determined at compile-time and cannot be changed at runtime. const can be used to declare variables of primitive types, collections, and objects whose constructors are marked as const. ',
                    //     style: GoogleFonts.lato(),
                    //   ),
                    // ),
                    // Text(
                    //   ' FINAL',
                    //   style: GoogleFonts.robotoMono(
                    //       fontWeight: FontWeight.bold, fontSize: 17),
                    // ),
                    // Container(
                    //   margin: const EdgeInsets.only(left: 12),
                    //   child: Text(
                    //     'final is used to declare a variable whose value is fixed once it is initialized. This means that the value of a final variable can be determined at runtime, but once it is set, it cannot be changed. final can be used to declare variables of any type, including objects.',
                    //     style: GoogleFonts.lato(),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ));
      }
    });
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Flutter Course'),
    //   ),
    //   body: Column(
    //     children: [
    //       Text(widget.coursename),
    //       Text(widget.blog),
    //     ],
    //   ),
    // );
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
