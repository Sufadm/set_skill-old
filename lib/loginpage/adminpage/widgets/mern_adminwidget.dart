import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/loginpage/adminpage/widgets/list_admin_mern.dart';

import '../../../database/database_flutter/db_function.dart';
import '../../../database/database_mern/database_mern.dart';
import '../../../database/models/fluttermodel/data_model.dart';
import 'list_admin_flutter_section.dart';

class MernAddCourse extends StatefulWidget {
  MernAddCourse({super.key});

  @override
  State<MernAddCourse> createState() => _MernAddCourseState();
}

class _MernAddCourseState extends State<MernAddCourse> {
  final _coursename = TextEditingController();

  final _logolink = TextEditingController();

  final _youtubevideoid = TextEditingController();

  final _blog = TextEditingController();

  final _section = TextEditingController();

  final _totaltime = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Add Mern course'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'MERN COURSE\n',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Section is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _section,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '  Section Name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Coursename is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _coursename,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Course Name',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Logo is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _logolink,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Logo link ',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Youtube vedio id is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _youtubevideoid,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'youtube vedio id ',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Blog is Required';
                    } else {
                      return null;
                    }
                  },
                  maxLines: 15,
                  controller: _blog,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Blog',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Total time is Required';
                    } else {
                      return null;
                    }
                  },
                  controller: _totaltime,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontStyle: FontStyle.italic),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Total Time',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addcourseMern();
                      } else {
                        return;
                      }
                    },
                    child: const Text('Add Course')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> addcourseMern() async {
    final name = _coursename.text.trim();
    final logo = _logolink.text.trim();
    final videolink = _youtubevideoid.text.trim();
    final blg = _blog.text.trim();
    final duration = _totaltime.text.trim();
    final sectionsmern = _section.text.trim();
    if (name.isEmpty |
        logo.isEmpty |
        videolink.isEmpty |
        blg.isEmpty |
        duration.isEmpty |
        sectionsmern.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            duration: Duration(seconds: 1),
            content: Text(
              'Please fill all the fields',
            )),
      );
    } else {
      final model1 = CourseMern(
        coursename: name,
        logolink: logo,
        youtubevideoid: videolink,
        blog: blg,
        totaltime: duration,
        sectionsmern: sectionsmern,
      );
      addcoursemern(model1);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const ListSectionsMern();
      }));
    }
  }
}
