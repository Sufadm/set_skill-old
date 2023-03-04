import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/mernstack%20courses/javascript.dart';

import '../../database/database_mern/database_mern.dart';
import '../../loginpage/adminpage/widgets/list_admin_mern.dart';

class MernLectures extends StatefulWidget {
  const MernLectures({super.key});

  @override
  State<MernLectures> createState() => _MernLecturesState();
}

class _MernLecturesState extends State<MernLectures> {
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
                'https://www.rlogical.com/wp-content/uploads/2020/12/MERN-Stack-considered-the-Best-for-Developing-Web-Apps.png',
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '      MERN STACK',
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
                          'MERN stack is a technology stack that is used for building web applications. It stands for MongoDB, Express, React, and Node.js. Each component of the stack is a specialized technology that is used for a specific part of the web application development process.',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //---------LESSON1 INTRODUCTION end------------------------------------------
              //---------LESSON2 curriculum start------------------------------------------
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
                                          if (data.sectionsmern ==
                                              'section 1') {
                                            Navigator.pushNamed(
                                                context, 'MernBasics');
                                          } else if (data.sectionsmern ==
                                              'section 2') {
                                            Navigator.pushNamed(
                                                context, 'Javascript');
                                          } else if (data.sectionsmern ==
                                              'section 3') {
                                            Navigator.pushNamed(
                                                context, 'Nodejs');
                                          } else if (data.sectionsmern ==
                                              'section 4') {
                                            Navigator.pushNamed(
                                                context, 'Mongodb');
                                          } else if (data.sectionsmern ==
                                              'section 5') {
                                            Navigator.pushNamed(
                                                context, 'MernFullCourse');
                                          } else if (data.sectionsmern ==
                                              'section 6') {
                                            Navigator.pushNamed(
                                                context, 'MernFullCourse');
                                          }
                                        },
                                        icon: const Icon(Icons.play_arrow)),
                                    Text(data.sectionsmern,
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                );
                              },
                              itemCount: value.length,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              //---------LESSON2 curriculum end--------------------------------------------
              //---------LESSON3 requirments start------------------------------------------

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
                          '1. Text editor: You will need a text editor to write and edit code. Popular options include Visual Studio Code, Sublime Text, and Atom.\n 2. Node.js: MERN stack uses Node.js as the server-side JavaScript runtime. You will need to install Node.js on your computer to run and build MERN stack applications.\n3. MongoDB: MERN stack uses MongoDB as the database. You will need to install MongoDB on your computer to interact with the database.\n4. Git: MERN stack development requires version control. Git is a popular version control system, and you will need to install Git on your computer to manage your code.\n',
                          style: GoogleFonts.lato(),
                        ),
                      ),
                  ],
                ),
              ),
              //-------lesson 3 requirnments ended----------------------------

              SizedBox(
                width: double.infinity,
                height: 670,
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
                        Text(' Mern Stack Development is here to stay!\n',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                        Text(
                          'We built the bestselling React course on SkillSet - this course now allows you to take your React knowledge to the next level and build fullstack web apps based on React, NodeJS, MongoDB and Express!',
                          style: GoogleFonts.lato(),
                        ),
                        Text(
                          'Building fullstack applications (i.e. frontend + backend) with the MERN stack is very popular - in this course, you will learn it from scratch at the example of a complete project!!',
                          style: GoogleFonts.lato(),
                        ),
                        Text(
                          'MERN stands for MongoDB, Express.js, React.js and Node.js - and combined, these four technologies allow you to build amazing web applications.',
                          style: GoogleFonts.lato(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Why is MernStack a BIG Deal?\n',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold)),
                        Text(
                          'MERN stack is considered a big deal in web development because it offers a number of advantages over traditional web development stacks. Some of the key reasons why MERN stack is a big deal are:\n1. All JavaScript stack: With MERN stack, you can use JavaScript for both the front-end and back-end development. This means that you can use a single programming language throughout the entire stack, making it easier to learn, develop, and maintain web applications.\n2. Scalability: MERN stack is highly scalable, and can handle large volumes of data and high levels of traffic. MongoDBs document-based storage system is particularly effective at handling large datasets.\n3. Real-time data exchange: MERN stack allows for real-time data exchange, which is essential for many modern web applications. This is made possible by the use of Node.js and the ability to implement WebSocket communication.\n4. Modular and reusable components: MERN stack makes it easy to create modular and reusable components, which can save time and reduce development costs.',
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


















//  Row(
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, 'MernBasics');
//                               },
//                               icon: const Icon(Icons.play_arrow)),
//                           Text('Section 1',
//                               style:
//                                   GoogleFonts.lato(fontWeight: FontWeight.bold))
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, 'Javascript');
//                               },
//                               icon: const Icon(Icons.play_arrow)),
//                           Text('Section 2',
//                               style:
//                                   GoogleFonts.lato(fontWeight: FontWeight.bold))
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, 'Nodejs');
//                               },
//                               icon: const Icon(Icons.play_arrow)),
//                           Text('Section 3',
//                               style:
//                                   GoogleFonts.lato(fontWeight: FontWeight.bold))
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, 'Mongodb');
//                               },
//                               icon: const Icon(Icons.play_arrow)),
//                           Text('Section 4',
//                               style:
//                                   GoogleFonts.lato(fontWeight: FontWeight.bold))
//                         ],
//                       ),