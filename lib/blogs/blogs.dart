import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 195),
              children: [
                //CARD 1========================================
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'widgetsblog'),
                  child: Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://media.wired.com/photos/631bb97dd884b4dcc94164e3/2:1/w_2399,h_1199,c_limit/How-to-Choose-a-Laptop-Gear-GettyImages-1235728903.jpg',
                        height: 100,
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'FLUTTER',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'Widgets',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 7),
                              child: const Icon(Icons.visibility)),
                          Text(
                            '  20K',
                            style: GoogleFonts.robotoFlex(fontSize: 13),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Text(
                              '30 MAY 2023',
                              style: GoogleFonts.robotoFlex(fontSize: 13),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                //CARD 2=============================================================
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, 'top10fluttertools'),
                  child: Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://www.cnet.com/a/img/resize/edd1c565841f89c843383d742aec56f688882492/hub/2022/05/18/3b87e640-d3e0-4898-8c1e-4146bcf2ce2e/acer-aspire-5-a515.jpg?auto=webp&fit=crop&height=675&width=1200',
                        height: 100,
                        width: double.infinity,
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'FLUTTER',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'Top 10 Flutter Tools',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 7),
                              child: const Icon(Icons.visibility)),
                          Text(
                            '  20K',
                            style: GoogleFonts.robotoFlex(fontSize: 13),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Text(
                              '30 MAY 2023',
                              style: GoogleFonts.robotoFlex(fontSize: 13),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                //CARD 3===================================================
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'aggregation'),
                  child: Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://marvel-b1-cdn.bc0a.com/f00000000100045/www.elmhurst.edu/wp-content/uploads/2022/02/masters-information-technology-salary-illustration.jpg',
                        height: 100,
                        width: double.infinity,
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'MERN',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'All About Aggregation ',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 7),
                              child: const Icon(Icons.visibility)),
                          Text(
                            '  20K',
                            style: GoogleFonts.robotoFlex(fontSize: 13),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Text(
                              '30 MAY 2023',
                              style: GoogleFonts.robotoFlex(fontSize: 13),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                //CARD4===================================================================
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, 'top10nodejsmodules'),
                  child: Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://online.champlain.edu/sites/online/files/styles/width_1600/public/2021-10/blog_header_-_why_it_is_a_good_career_-_1900x900.jpg?itok=cA23Xz-S',
                        height: 100,
                        width: double.infinity,
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'MERN',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: const EdgeInsets.only(top: 6, left: 10),
                          child: Text(
                            'Top 10 Modules in NODEJS ',
                            style:
                                GoogleFonts.lato(fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 7),
                              child: const Icon(Icons.visibility)),
                          Text(
                            '  20K',
                            style: GoogleFonts.robotoFlex(fontSize: 13),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Text(
                              '30 MAY 2023',
                              style: GoogleFonts.robotoFlex(fontSize: 13),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
              ],
            ),
          )),
    );
  }
}
