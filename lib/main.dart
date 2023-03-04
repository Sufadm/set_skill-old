import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:set_skill/FlutterCourses/allcourse_adminadd.dart';
import 'package:set_skill/blogs_homepage/blog_home_page.dart';
import 'package:set_skill/FlutterCourses/dart_basics.dart';
import 'package:set_skill/FlutterCourses/database.dart';
import 'package:set_skill/FlutterCourses/flutter_basics.dart';
import 'package:set_skill/FlutterCourses/widgets.dart';
import 'package:set_skill/account/about.dart';
import 'package:set_skill/account/privacy.dart';
import 'package:set_skill/blogs/blogspage/aggregation.dart';
import 'package:set_skill/blogs/blogspage/top10modules.dart';
import 'package:set_skill/blogs/blogspage/top10tools.dart';
import 'package:set_skill/blogs/blogspage/widgetpage.dart';
import 'package:set_skill/database/database_flutter/db_function.dart';
import 'package:set_skill/database/models/fluttermodel/data_model.dart';
import 'package:set_skill/database/models/fluttermodel/data_model2.dart';
import 'package:set_skill/database/models/model_mern/data_model_mern.dart';
import 'package:set_skill/flutterpages/lectures_flutter.dart';
import 'package:set_skill/flutterpages/mernstack_pages/lectures_mern.dart';
import 'package:set_skill/flutterpages/mernstack_pages/overview_mern.dart';
import 'package:set_skill/flutterpages/tabbar.dart';
import 'package:set_skill/mernstack%20courses/allcourseAdminadd_mern.dart';
import 'package:set_skill/mernstack%20courses/javascript.dart';
import 'package:set_skill/mernstack%20courses/mernbasics.dart';
import 'package:set_skill/mernstack%20courses/mongodb.dart';
import 'package:set_skill/mernstack%20courses/nodejs.dart';
import 'package:set_skill/splash_screen/splash_screen.dart';
import 'FlutterCourses/allcourse_adminadd2.dart';
import 'database/database_mern/database_mern.dart';
import 'database/models/model_mern/data_model2_mern.dart';
import 'flutterpages/overview_flutter.dart';
import 'loginpage/adminpage/admin_editpage.dart';
import 'loginpage/adminpage/widgets/mern_adminwidget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(SectionAdapter());
  Hive.registerAdapter(CourseFlutterAdapter());
  Hive.registerAdapter(SectionMernAdapter());
  Hive.registerAdapter(CourseMernAdapter());
  getallsections();
  getallsectionsmern();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Set',
      home: const Splash_Screen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "OverviewFlutter": (context) => const OverviewFlutter(),
        "OverviewMern": (context) => const MernOverview(),
        "BlogHomePage": (context) => const BlogHomePage(),
        'Tabbar': (context) => const Tabbar(),
        'LecturesFlutter': (context) => const LecturesFlutter(),
        "lecturesmern": (context) => const MernLectures(),
        'Tabbar2': (context) => const Tabbar2(),
        'DartBasics': (context) => const video(),
        'FlutterBasics': (context) => const FlutterBasics(),
        'Widgets': (context) => const Widgets(),
        'DataBase': (context) => const DataBase(),
        'MernBasics': (context) => const MernBasics(),
        "Javascript": (context) => const Javascript(),
        'Nodejs': (context) => const Nodejs(),
        'Mongodb': (context) => const Mongodb(),
        'widgetsblog': (context) => const WidgetsBlog(),
        'top10fluttertools': (context) => const Top10FlutterTools(),
        'aggregation': (context) => const Aggregation(),
        'top10nodejsmodules': (context) => const Top10NodejsModules(),
        'privacypolicy': (context) => const Privacy(),
        'aboutskillset': (context) => const AboutSkillset(),
        'FlutterFirstCourse': (context) => const FlutterAllCourse(),
        'MernFullCourse': (context) => const MernAllCourse(),
        "AdminAccessPage": (context) => const AdminAccessPage(),
        "MernAddCourse": (context) => MernAddCourse(),
        "FlutterSecondCourse": (context) => const FlutterSecondCourse(),
      },
    );
  }
}
