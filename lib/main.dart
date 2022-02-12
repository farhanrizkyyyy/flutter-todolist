// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/configs/theme.config.dart';
import 'package:todolist/modules/auth/signin/signin_screen.dart';
import 'package:todolist/modules/auth/signup/signup_screen.dart';
import 'package:todolist/modules/category/add_category/add_category_screen.dart';
import 'package:todolist/modules/category/update_category/update_category_screen.dart';
import 'package:todolist/modules/home/home_screen.dart';
import 'package:todolist/modules/task/add_task/add_task_screen.dart';
import 'package:todolist/modules/task/task_list/task_list_screen.dart';
import 'package:todolist/modules/task/update_task/update_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => SignInScreen(),
        '/sign-up': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/task-list': (context) => TaskListScreen(),
        '/add-category': (context) => AddCategoryScreen(),
        '/update-category': (context) => UpdateCategoryScreen(),
        '/add-task': (context) => AddTaskScreen(),
        '/update-task': (context) => UpdateTaskScreen(),
      },
    );
  }
}
