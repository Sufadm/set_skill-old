import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Mongodb extends StatefulWidget {
  const Mongodb({super.key});

  @override
  State<Mongodb> createState() => _MongodbState();
}

class _MongodbState extends State<Mongodb> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'lBBtq3Oawqw',
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
                                  ' MONGODB',
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
                                  '  10.5k Learners',
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 190),
                              child: Image.network(
                                  'https://global-uploads.webflow.com/618fa90c201104b94458e1fb/623d8cf285bb1c12332d0f10_Monogram%20(1).jpg'),
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
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      'MongoDB is a popular document-oriented NoSQL database program. It was developed by MongoDB Inc. and is designed to provide a scalable, high-performance, and flexible database solution for modern applications. MongoDB stores data in flexible, JSON-like documents, which makes it easy to represent complex hierarchical relationships..\n\nOne of the key features of MongoDB is its ability to scale horizontally across multiple servers. This allows for seamless expansion of database capacity as the data grows. MongoDB also supports replication and sharding, which ensures high availability and fault tolerance.\n\nMongoDB is widely used in web development, mobile apps, and big data analytics. It has become a popular choice for modern, data-intensive applications due to its flexible data model, scalability, and ability to handle unstructured data.',
                      style: GoogleFonts.lato(fontSize: 15),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Some of the key features of MongoDB include:',
                        style: GoogleFonts.robotoSlab(
                            fontSize: 15, decoration: TextDecoration.underline),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '1. Schema-less: MongoDB is a document-oriented database, which means that there is no need to define a schema before storing data. You can store different types of documents with different structures in the same collection.\n\n2. High Availability: MongoDB provides automatic failover and replication, which ensures high availability and data redundancy. This means that if one server fails, another server will take over automatically.\n\n3. Sharding: MongoDB supports horizontal scaling through sharding. Sharding allows you to distribute data across multiple servers, which can increase performance and scalability.\n\n4. Indexing: MongoDB provides flexible indexing options to optimize query performance. You can create indexes on any field or combination of fields in a document.\n\n5. Aggregation: MongoDB provides a powerful aggregation framework that allows you to perform complex operations on the data, such as grouping, sorting, and filtering.',
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
