import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Top10NodejsModules extends StatelessWidget {
  const Top10NodejsModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://colorlib.com/wp/wp-content/uploads/sites/2/nodejs-frameworks.png'),
              const SizedBox(
                height: 15,
              ),
              Text(
                ' Top 10 Modules in NodeJS\n',
                style: GoogleFonts.aBeeZee(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Node.js is a popular JavaScript runtime that allows developers to build scalable, high-performance applications using JavaScript. Here are the top 10 Node.js modules that are widely used by developers:',
                style: GoogleFonts.acme(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '1. Express: A fast, flexible, and minimalist web framework for Node.js, used for building web applications and APIs.\n\n2. Lodash: A utility library that provides a wide range of utility functions for working with arrays, objects, strings, and more.\n\n3. Async: A module that provides functions for managing asynchronous control flow, making it easier to write asynchronous code in Node.js.\n\n4. Moment.js: A library for parsing, validating, manipulating, and formatting dates and times in JavaScript.\n\n5. Socket.IO: A library that enables real-time bidirectional communication between web clients and servers, making it easier to build real-time applications such as chat apps and games.\n\n6. Request: A simplified HTTP client library that makes it easier to send HTTP/HTTPS requests in Node.js.\n\n7. Mongoose: A MongoDB object modeling tool designed to work in an asynchronous environment, used for working with MongoDB databases in Node.js.\n\n8. Nodemailer: A module that makes it easy to send email from Node.js applications.\n\n9. Passport: A module that provides authentication middleware for Node.js, making it easy to add user authentication to web applications.\n\n10. Morgan: A logging middleware for Node.js that provides a customizable logging output for HTTP requests and responses.',
                style: GoogleFonts.lato(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'These modules are just a few of the many available for Node.js, and each serves a specific purpose in building Node.js applications.\n',
                style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
