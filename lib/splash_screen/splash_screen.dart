import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:set_skill/bottomnavigation/bottomnav.dart';
import 'package:set_skill/homepage/Homescreen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:set_skill/loginpage/firstpage.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    navigate_to_Homescreen();
    super.initState();
  }

  // ignore: non_constant_identifier_names
  navigate_to_Homescreen() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const Firstpage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 228),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "images/setskill_logo-removebg-preview.png",
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: LoadingAnimationWidget.staggeredDotsWave(
                  color: Colors.black, size: 50),
            )
          ],
        ),
      ),
    );
  }
}
