import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:set_skill/account/account.dart';
import 'package:set_skill/flutterpages/mernstack_pages/overview_mern.dart';
import 'package:set_skill/flutterpages/tabbar.dart';
import 'package:set_skill/mycourses/mycourse.dart';
import 'package:google_fonts/google_fonts.dart';
import '../search_bar/search.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Hello', style: GoogleFonts.acme(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: IconButton(
              onPressed: () {
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //first  Main Box container-----------------------------------------

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 13, 10, 188)),
            height: 170,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //child container 1 ----------
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: const Text(
                        'The technology you use impreses no one. \n The experience you create with it is everything',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ),
                    //child container 2------------
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: const Text(
                        'Lets get started with our \nCourses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    //child container 3-----------
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        'Lets get Started',
                        style: GoogleFonts.kanit(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'images/logo.png',
                  height: 100,
                )
              ],
            ),
          ),
          //main container end------------------------------------------------------------------------------------------------------------------

          const SizedBox(
            height: 15,
          ),
          //categories started================================================================================================================================
          Container(
              margin: const EdgeInsets.only(left: 13),
              alignment: Alignment.topLeft,
              child: Text(
                'Categories',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Tabbar');
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 70,
                    width: 190,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'FLUTTER',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '4 Courses',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Image.asset(
                          'images/0_ObJbOfJnx4QIPUq9.png',
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Tabbar2');
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 70,
                    width: 190,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'MERNSTACK',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 25),
                              child: const Text(
                                '4 Courses',
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'images/images (1).jpeg',
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          //categories END==============
          const SizedBox(
            height: 15,
          ),
          //TOP COURSE STARTED-------------------------
          Container(
              margin: const EdgeInsets.only(left: 13),
              alignment: Alignment.topLeft,
              child: Text(
                'Top courses',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.amberAccent,
                  ),
                  height: 160,
                  width: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://img.business.com/w/700/aHR0cHM6Ly9pbWFnZXMuYnVzaW5lc3NuZXdzZGFpbHkuY29tL2FwcC91cGxvYWRzLzIwMjIvMDQvMDQwNzQ1NTMvMTU1NDI0NDAxMC5qcGVn',
                        height: 100,
                      ),
                      const ListTile(
                        title: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              'FLUTTER',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 160,
                  width: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://www.rlogical.com/wp-content/uploads/2020/12/MERN-Stack-considered-the-Best-for-Developing-Web-Apps.png',
                        height: 100,
                      ),
                      const ListTile(
                        title: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              'MERNSTACK',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          //TOP COURSES ENDED-------
          const SizedBox(
            height: 15,
          ),
          //POPULAR BLOG STARTED--------------------------------------
          Container(
              margin: const EdgeInsets.only(left: 13),
              alignment: Alignment.topLeft,
              child: Text(
                'Popular Blogs',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'BlogHomePage'),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/photo_1517336714731_489689fd1ca8_9.jpeg',
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Sufad M',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Top Best Paying Jobs in\nTechnology in 2023',
                                style: GoogleFonts.lato(color: Colors.black)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            child: Text(
                                'Technology is defenitly one of the\nFastest growing careers out there.\nCareer in technology has several\nbenefits and high salary',
                                style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          //POPULAR BLOG ENDED-------------------------------
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
