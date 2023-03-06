import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/database/models/overview_model/flutter_overview_model.dart';
import 'package:set_skill/loginpage/adminpage/admin_editpage.dart';

class OverviewFlutterAdmin extends StatefulWidget {
  const OverviewFlutterAdmin({super.key});

  @override
  State<OverviewFlutterAdmin> createState() => _OverviewFlutterAdminState();
}

class _OverviewFlutterAdminState extends State<OverviewFlutterAdmin> {
  final _duration = TextEditingController();
  final _whatyouwilllearn = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          'overview add admin',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'OVERVIEW FLUTTER',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _duration,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Total time',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 3, 2, 2))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _whatyouwilllearn,
                maxLines: 20,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontStyle: FontStyle.italic),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'What you will learn',
                    alignLabelWithHint: true,
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
                    Navigator.pushNamed(context, 'AdminAccessPage');
                  },
                  child: const Text('Add Overview')),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addflutter() async {
    final time = _duration.text.trim();
    final learning = _whatyouwilllearn.text.trim();
    if (time.isEmpty | learning.isEmpty) {
      return;
    } else {
      final model1 = FlutterOverviewModel(
          durationofcourse: time, whatyouwillleran: learning);
      addoverviewflutter(model1);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const AdminAccessPage();
      }));
    }
  }
}
