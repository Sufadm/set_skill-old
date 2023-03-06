import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/FlutterCourses/allcourse_adminadd.dart';
import '../../../database/database_flutter/db_function.dart';

class ListSectionsFlutter extends StatefulWidget {
  const ListSectionsFlutter({super.key});

  @override
  State<ListSectionsFlutter> createState() => _ListSectionsFlutterState();
}

class _ListSectionsFlutterState extends State<ListSectionsFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'AdminAccessPage');
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          'Section list of flutter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 10),
            child: Text('Lesson 2',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '   Curriculum',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          ValueListenableBuilder(
            valueListenable: courselistNotifier,
            // ignore: non_constant_identifier_names
            builder: (context, Section, child) {
              return Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    final data = Section[index];
                    return Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              if (data.sections == 'section 1') {
                                Navigator.pushNamed(context, 'DartBasics');
                              } else if (data.sections == 'section 2') {
                                Navigator.pushNamed(context, 'FlutterBasics');
                              } else if (data.sections == 'section 3') {
                                Navigator.pushNamed(context, 'Widgets');
                              } else if (data.sections == 'section 4') {
                                Navigator.pushNamed(context, 'DataBase');
                              } else if (data.sections == 'section 5') {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return FlutterAllCourse(
                                      coursename: data.coursename,
                                      logolink: data.logolink,
                                      youtubeid: data.youtubevideoid,
                                      blog: data.blog,
                                      index: index);
                                }));
                              } else if (data.sections == 'section 6') {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return FlutterAllCourse(
                                      coursename: data.coursename,
                                      logolink: data.logolink,
                                      youtubeid: data.youtubevideoid,
                                      blog: data.blog,
                                      index: index);
                                }));
                              }
                            },
                            icon: const Icon(Icons.play_arrow)),
                        Text(data.sections,
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                        Container(
                          margin: const EdgeInsets.only(left: 250),
                          child: IconButton(
                            onPressed: (() {
                              showDialog(
                                context: context,
                                builder: ((context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: AlertDialog(
                                      title: const Text(
                                        'Alert!',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 8, 6, 6),
                                        ),
                                      ),
                                      content: const Text(
                                        "Do you want to delete this section",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: (() {
                                            popoutfuction(context);
                                            deletesection(index);
                                          }),
                                          child: const Text('Yes'),
                                        ),
                                        TextButton(
                                            onPressed: (() {
                                              popoutfuction(context);
                                            }),
                                            child: const Text('No'))
                                      ],
                                    ),
                                  );
                                }),
                              );
                            }),
                            icon: const Icon(
                              Icons.delete,
                              color: Color.fromARGB(255, 179, 33, 23),
                            ),
                            tooltip: 'Delete',
                          ),
                        ),
                      ],
                    );
                  }),
                  itemCount: Section.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  popoutfuction(BuildContext context) {
    return Navigator.of(context).pop();
  }
}
