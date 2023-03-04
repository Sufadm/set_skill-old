import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:set_skill/flutterpages/lectures_flutter.dart';
import 'package:set_skill/flutterpages/mernstack_pages/lectures_mern.dart';
import 'package:set_skill/flutterpages/mernstack_pages/overview_mern.dart';
import 'overview_flutter.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 500),
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 41, 159, 198),
            bottom: TabBar(
                labelStyle: GoogleFonts.lato(fontWeight: FontWeight.bold),
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(
                    text: 'Overview',
                  ),
                  Tab(
                    text: 'Lectures',
                  )
                ]),
          ),
          body: const TabBarView(children: [
            OverviewFlutter(),
            LecturesFlutter(),
          ]),
        ));
  }
}

class Tabbar2 extends StatelessWidget {
  const Tabbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 500),
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0D4B86),
            bottom: TabBar(
                labelStyle: GoogleFonts.lato(fontWeight: FontWeight.bold),
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(
                    text: 'Overview',
                  ),
                  Tab(
                    text: 'Lectures',
                  )
                ]),
          ),
          body: const TabBarView(children: [
            MernOverview(),
            MernLectures(),
          ]),
        ));
  }
}
