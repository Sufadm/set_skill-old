import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/models/model_mern/data_model2_mern.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/loginpage/adminpage/widgets/list_admin_mern.dart';

import '../../../database/database_flutter/db_function.dart';
import '../../../database/database_mern/database_mern.dart';
import '../../../database/models/fluttermodel/data_model.dart';
import 'list_admin_flutter_section.dart';

class MernAddCourse extends StatelessWidget {
  final _coursename = TextEditingController();
  final _logolink = TextEditingController();
  final _youtubevideoid = TextEditingController();
  final _blog = TextEditingController();
  final _section = TextEditingController();
  final _totaltime = TextEditingController();
  MernAddCourse({super.key});

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
          child: Column(
            children: [
              Text(
                'MERN COURSE\n',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: _section,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '  Section',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _coursename,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Course Name',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _logolink,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Logo link ',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _youtubevideoid,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'youtube vedio id ',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _blog,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Blog',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _totaltime,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Total Time',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0),
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0))))),
                  onPressed: () {
                    // Navigator.pushNamed(context, 'MernFullCourse');
                    addsectionmern();
                    addcourseMern();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ListSectionsMern();
                    }));
                  },
                  child: const Text('Add Course')),
            ],
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
    if (name.isEmpty |
        logo.isEmpty |
        videolink.isEmpty |
        blg.isEmpty |
        duration.isEmpty) {
      return;
    } else {
      final model1 = CourseMern(
          coursename: name,
          logolink: logo,
          youtubevideoid: videolink,
          blog: blg,
          totaltime: duration);
      addcoursemern(model1);
    }
  }

  Future<void> addsectionmern() async {
    final sectionnumber = _section.text.trim();
    if (sectionnumber.isEmpty) {
      return;
    } else {
      final model2 = SectionMern(sectionsmern: sectionnumber);
      addsectionsmern(model2);
    }
  }
}
