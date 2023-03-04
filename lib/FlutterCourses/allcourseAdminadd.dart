import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';

class FlutterAllCourse extends StatelessWidget {
  const FlutterAllCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter All Course'),
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
