import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Top10FlutterTools extends StatelessWidget {
  const Top10FlutterTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://www.nextbraintech.com/blogim/top-10-flutter-app-development-tools-2021.jpg'),
              SizedBox(
                height: 10,
              ),
              Text(
                'Top 10 tools for Flutter development:',
                style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1. Android Studio - a widely used and official integrated development environment (IDE) for Android app development, which has a Flutter plugin to support Flutter development.\n\n2. Visual Studio Code - a popular code editor with Flutter extensions and plugins for code completion, debugging, and other features.\n\n3. IntelliJ IDEA - a powerful IDE that supports Flutter development with its Dart and Flutter plugins.\n\n4. Flutter Inspector - a tool that is integrated into Android Studio and Visual Studio Code and helps to inspect the Flutter widget tree, view the layout, and diagnose issues.\n\n5. Flutter DevTools - a suite of performance and debugging tools for Flutter, including a performance profiler, memory monitor, network inspector, and more.\n\n6.Flutter Launcher Icons - a tool that helps to generate launcher icons for Flutter apps with the required sizes and formats.\n\n7. Flutter Form Builder - a tool that simplifies the process of creating forms in Flutter by generating the code for you.\n\n8. Flutter Starter - a tool that provides a starter kit for creating Flutter apps with pre-built templates and widgets.\n\n9. Flutter Packages - a repository of reusable Dart packages that can be used in Flutter apps to add functionality or speed up development.\n\n10. Firebase - a cloud-based backend service that provides features like authentication, real-time databases, cloud storage, and more, which can be integrated with Flutter apps to add functionality and improve user experience.',
                style: GoogleFonts.lato(fontSize: 15.3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
