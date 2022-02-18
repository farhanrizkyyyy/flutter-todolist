// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/configs/theme.config.dart';
import 'package:todolist/modules/auth/presentation/signin/signin_screen.dart';
import 'package:todolist/modules/auth/presentation/signup/signup_screen.dart';
import 'package:todolist/modules/category/presentation/add_category/add_category_screen.dart';
import 'package:todolist/modules/category/presentation/provider/categories_provider.dart';
import 'package:todolist/modules/category/presentation/update_category/update_category_screen.dart';
import 'package:todolist/modules/home/home_screen.dart';
import 'package:todolist/modules/task/add_task/add_task_screen.dart';
import 'package:todolist/modules/task/task_list/task_list_screen.dart';
import 'package:todolist/modules/task/update_task/update_task_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoriesProvider(),
      child: MaterialApp(
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
      ),
    );
  }
}
