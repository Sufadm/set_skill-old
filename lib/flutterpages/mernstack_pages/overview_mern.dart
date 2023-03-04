import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class MernOverview extends StatelessWidget {
  const MernOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                trimLines: 16,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Readmore',
                moreStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                lessStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                trimExpandedText: 'Read less',
                'MERN stack is a collection of technologies that enables faster application development. It is used by developers worldwide.\nThe main purpose of using MERN stack is to develop apps\nusing JavaScript only. This is because the four technologies\nthat make up the technology stack are all JS-based\n\n1. What is MERN\n2. Build an entire project from scratch!\n3. Learn how to implement Authentication & Authorization\n4. Refresh the basics about ReactJS, NodeJS, Express and MongoDB\n5. Learn how to implement ES6 in Node\n6. Learn how to deploy MERN app on Heroku\n7. Learn how to implement React Hooks, Async/Await, React Router 6, Axios\n8. Learn how to build big full stack app from scratch\n9. Product search, carousel, pagination & more\n10. Product rating & review system...',
                style: GoogleFonts.lato(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0D4B86),
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'lecturesmern');
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
