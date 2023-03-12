import 'package:flutter/material.dart';
import 'package:flutter_mobile/courseDetail.dart';
import 'package:flutter_mobile/scheduleScreen.dart';
import 'package:flutter_mobile/teacherDetail.dart';

import 'package:flutter_mobile/discorverCourses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(child: MainScreen(title: 'Flutter Demo Home Page')),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Image.asset(
                    'images/lettutor_logo.jpg',
                    fit: BoxFit.fitHeight,
                    height: AppBar().preferredSize.height * 0.55,),
                ),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white30,
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                      Icons.language,
                    size: 25,
                  ),
                )
              ],
            ),
            backgroundColor: Colors.white,
        ),
      ),
      body: CourseDetail()
    );
  }
}

