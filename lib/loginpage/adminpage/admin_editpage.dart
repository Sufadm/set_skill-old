import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/loginpage/adminpage/widgets/list_admin_flutter_section.dart';
import 'package:set_skill/loginpage/adminpage/widgets/mern_adminwidget.dart';

import '../../database/database_flutter/db_function.dart';
import '../../database/models/fluttermodel/data_model2.dart';

class AdminAccessPage extends StatefulWidget {
  const AdminAccessPage({super.key});

  @override
  State<AdminAccessPage> createState() => _AdminAccessPageState();
}

class _AdminAccessPageState extends State<AdminAccessPage> {
  final _coursename = TextEditingController();
  final _logolink = TextEditingController();
  final _youtubevideoid = TextEditingController();
  final _blog = TextEditingController();
  final _section = TextEditingController();
  final _totaltime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Colors.amber,
        title: const Text(
          ' Add Flutter course ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'FLUTTER COURSE\n',
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
                    labelText: 'section',
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
                    labelText: 'Course Name',
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
                    labelText: 'Logo Link',
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
                    labelText: 'youtube vedio id',
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
                    labelText: 'Blog',
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
                    labelText: 'Total Time',
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
                    addsection();
                    addcourse();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ListSectionsFlutter();
                    }));
                  },
                  child: const Text('Add Course')),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addcourse() async {
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
      final model1 = CourseFlutter(
          coursename: name,
          logolink: logo,
          youtubevideoid: videolink,
          blog: blg,
          totaltime: duration);
      addcourseflutter(model1);
    }
  }

  Future<void> addsection() async {
    final sectionnumber = _section.text.trim();
    if (sectionnumber.isEmpty) {
      return;
    } else {
      final model2 = Section(sections: sectionnumber);
      addsections(model2);
    }
  }
}
