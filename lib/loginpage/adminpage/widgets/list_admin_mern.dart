import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../database/database_mern/database_mern.dart';

class ListSectionsMern extends StatelessWidget {
  const ListSectionsMern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('ListSectionsMern'),
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
            valueListenable: sectionlistNotifiermern,
            builder: (context, value, child) {
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final data = value[index];
                    return Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              if (data.sectionsmern == 'section 1') {
                                Navigator.pushNamed(context, 'MernBasics');
                              } else if (data.sectionsmern == 'section 2') {
                                Navigator.pushNamed(context, 'Javascript');
                              } else if (data.sectionsmern == 'section 3') {
                                Navigator.pushNamed(context, 'Nodejs');
                              } else if (data.sectionsmern == 'section 4') {
                                Navigator.pushNamed(context, 'Mongodb');
                              } else if (data.sectionsmern == 'section 5') {
                                Navigator.pushNamed(context, 'MernFullCourse');
                              } else if (data.sectionsmern == 'section 6') {
                                Navigator.pushNamed(context, 'MernFullCourse');
                              }
                            },
                            icon: const Icon(Icons.play_arrow)),
                        Text(data.sectionsmern,
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
                                            deletesectionMern(index);
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
                  },
                  itemCount: value.length,
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
