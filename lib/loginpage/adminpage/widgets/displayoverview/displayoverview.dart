import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DisplayOverview extends StatefulWidget {
  String time;
  String learningflutter;
  DisplayOverview(
      {super.key, required this.time, required this.learningflutter});

  @override
  State<DisplayOverview> createState() => _DisplayOverviewState();
}

class _DisplayOverviewState extends State<DisplayOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const Icon(Icons.access_time),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '6 Hours',
                    style: GoogleFonts.lato(fontSize: 17),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const Icon(Icons.library_books),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Completion certificate',
                    style: GoogleFonts.lato(fontSize: 17),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const Icon(Icons.leaderboard),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Beginner',
                    style: GoogleFonts.lato(fontSize: 17),
                  )
                ],
              ),
            ),

            //read more content started-------------
            const SizedBox(
              height: 17,
            ),

            Container(
              margin: const EdgeInsets.only(left: 14),
              child: Text(
                'What You will Learn ?',
                style: GoogleFonts.robotoFlex(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(left: 14),
              child: ReadMoreText(
                trimLines: 15,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Readmore',
                moreStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                lessStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                trimExpandedText: 'Read less',
                'Flutter provides a lot of widgets for making almost any\ntype of application and it also provides animation support\nwhichyou can use for your application. Moreover, Flutter is \npowered by Dart a programming language that Flutter uses\nto make android and IOS apps.....\n1. What is dart\n2. Functions in Dart\n3. OOPS in Dart Programming Language\n4. Understanding Flutter version\n5. Course Outline\n6. Learn Flutetr and Dart from the ground up step by step\n7. Learn how to upload images and how to send automated push notification\n8. Naviagtion and Routes\n9. All About Database Hive\n10. SQflite...',
                style: GoogleFonts.lato(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 41, 159, 198),
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'LecturesFlutter');
                    },
                    child: Text(
                      'Start Learning',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }
}
