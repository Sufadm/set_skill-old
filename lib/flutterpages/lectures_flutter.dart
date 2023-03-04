import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/FlutterCourses/allcourse_adminadd.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/database/models/fluttermodel/data_model2.dart';

class LecturesFlutter extends StatefulWidget {
  const LecturesFlutter({super.key});

  @override
  State<LecturesFlutter> createState() => _LecturesFlutterState();
}

class _LecturesFlutterState extends State<LecturesFlutter> {
  bool _showDescription = false;
  bool _showDescription1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://www.mindinventory.com/blog/wp-content/uploads/2022/09/flutter-for-enterprise-app-development.jpeg',
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '     MOBILE APP DEVELOPMENT',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('     4.5 ⭐    10.5K Listeners'),
              const SizedBox(
                height: 4,
              ),
              //---------LESSON1 INTRODUCTION START------------------------------------------
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('Lesson 1\nIntroduction',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showDescription = !_showDescription;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              _showDescription
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              size: 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_showDescription)
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Learn To Build & Program Beautiful, Fast, And Native-Quality Apps With Our Flutter Course. Find the right instructor for you. Choose from many topics, skill levels, and languages. Real-world experts',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //--------LESSON1 INTRODUCTION END---------------------------
              //--------LESSON 2 STARTED-------------------
              SizedBox(
                width: double.infinity,
                height: 260,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, top: 10),
                        child: Text('Lesson 2',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '   Curriculum',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      ValueListenableBuilder(
                        valueListenable: sectionlistNotifier,
                        builder: (context, value, child) {
                          return Expanded(
                            child: ListView.builder(
                              itemBuilder: ((context, index) {
                                final data = value[index];
                                return Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          if (data.sections == 'section 1') {
                                            Navigator.pushNamed(
                                                context, 'DartBasics');
                                          } else if (data.sections ==
                                              'section 2') {
                                            Navigator.pushNamed(
                                                context, 'FlutterBasics');
                                          } else if (data.sections ==
                                              'section 3') {
                                            Navigator.pushNamed(
                                                context, 'Widgets');
                                          } else if (data.sections ==
                                              'section 4') {
                                            Navigator.pushNamed(
                                                context, 'DataBase');
                                          } else if (data.sections ==
                                              'section 5') {
                                            Navigator.pushNamed(
                                                context, 'FlutterFirstCourse');
                                          } else if (data.sections ==
                                              'section 6') {
                                            Navigator.pushNamed(
                                                context, 'FlutterSecondCourse');
                                          }
                                        },
                                        icon: const Icon(Icons.play_arrow)),
                                    Text(data.sections,
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                );
                              }),
                              itemCount: value.length,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              //LESSON 2 END---------------------------------------------------------------------
              //LESSON 3 STARTED----------------------
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text('Lesson 3\nRequiements',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showDescription1 = !_showDescription1;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Icon(
                              _showDescription1
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              size: 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_showDescription1)
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          '1. Basic programming language will help but is not a must-have\n 2. You can use either Windows,macOS or Linux for Android app development-iOS aps can be built on macOS though\n3. NO prior iOS or Android development experience is required\n4. NO prior Flutter or Dart experience is required - this course starts at zero',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //LESSON 3 ENDED------------------------------------------------------------------------

              SizedBox(
                width: double.infinity,
                height: 425,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Lesson 4',
                          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                        ),
                        Text(' Description',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(' Flutter Development is here to stay!\n',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                        Text(
                          'Welcome to The Complete Flutter App Development Course (The Worlds First Complete Dart and Flutter Course',
                          style: GoogleFonts.lato(),
                        ),
                        Text(
                          'Flutter is the new Cross-platform Mobile Development Framework created by Google, allowing developers to build Android and iOS Apps with one single codebase!',
                          style: GoogleFonts.lato(),
                        ),
                        Text(
                          'Flutter is the BEST way to create cross-platform apps that otherwise would require two distinct mobile development teams to create.',
                          style: GoogleFonts.lato(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Why is Flutter a BIG Deal?\n',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                        Text(
                          'Flutter is a big deal because any developer (or anyone who wants to learn mobile development) can now build native Android and iOS apps with one codebase ONLY! This means, instead of having to learn Objective-C or Swift to build iOS apps, and Java, or Kotlin to build Android apps, you can now use Flutter Mobile Development Framework to build apps that run natively on both iOS and Android devices using the General-purpose Dart Programming Language',
                          style: GoogleFonts.lato(),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}































 // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'DartBasics');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 1',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'FlutterBasics');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 2',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'Widgets');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 3',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     IconButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, 'DataBase');
                        //         },
                        //         icon: const Icon(Icons.play_arrow)),
                        //     Text('Section 4',
                        //         style: GoogleFonts.lato(
                        //             fontWeight: FontWeight.bold))
                        //   ],
                        // ),