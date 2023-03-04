import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DataBase extends StatefulWidget {
  const DataBase({super.key});

  @override
  State<DataBase> createState() => _DataBaseState();
}

class _DataBaseState extends State<DataBase> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'ee2RUDriM5g',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.landscape) {
        return Scaffold(
          body: youtubeHierarchy(),
        );
      } else {
        return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  ' DATABASE',
                                  style: GoogleFonts.robotoMono(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '   4.5 ⭐',
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '   10.5k Learners',
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 190),
                              child: Image.network(
                                  'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-goog/events/flutter-logo-5086DD11C5-seeklogo.com__JBIGT4S.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  youtubeHierarchy(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' DATABASE ',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      'In Flutter, a database is an organized collection of data that can be easily accessed, managed, and updated. Flutter provides several options for working with databases, including:',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' SQLite',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'a lightweight and efficient relational database management system that is widely used in mobile app development. SQLite databases can be created and managed using the sqflite package.\n',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ' HIVE',
                    style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Hive is an open-source data warehousing tool that was developed by Facebook. It enables users to read, write, and manage large datasets stored in distributed storage systems, such as Hadoop Distributed File System (HDFS) or Amazon S3, using a SQL-like interface called HiveQL.\n\n In Hive, a database is a collection of tables that are logically grouped together. Each table in Hive is associated with a schema, which defines the columns and their data types. Hive databases can be partitioned based on a specific column, which allows for faster querying and processing of large datasets. ',
                      style: GoogleFonts.lato(),
                    ),
                  ),
                ],
              ),
            ));
      }
    });
  }

  youtubeHierarchy() {
    return Align(
      child: FittedBox(
        fit: BoxFit.fill,
        child: YoutubePlayer(
          aspectRatio: 16 / 9,
          controller: _controller,
        ),
      ),
    );
  }
}
