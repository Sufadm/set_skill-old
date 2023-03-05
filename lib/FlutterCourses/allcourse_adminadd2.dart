import 'package:flutter/material.dart';
import '../database/database_flutter/db_function.dart';

class FlutterSecondCourse extends StatelessWidget {
  const FlutterSecondCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 2nd Course'),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: courselistNotifier,
            builder: (context, value, child) {
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final data = value[index];
                    return Text(data.youtubevideoid);
                  },
                  itemCount: value.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
