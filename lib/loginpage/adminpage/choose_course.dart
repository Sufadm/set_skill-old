import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseCourse extends StatelessWidget {
  const ChooseCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 270),
            Text(
              'Which course want to Add',
              style: GoogleFonts.lato(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //!Flutter button
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  onPressed: () {
                    //Navigator.pushNamed(context, 'AdminAccessPage');
                    Navigator.pushNamed(context, 'ListSectionsFlutter');
                  },
                  child: const Text(
                    'FLUTTER',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                //!Mernstack button
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, 'MernAddCourse');
                      Navigator.pushNamed(context, 'listsectionmern');
                    },
                    child: const Text(
                      'MERNSTACK',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
