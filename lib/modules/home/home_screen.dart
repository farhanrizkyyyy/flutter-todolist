// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/configs/palette.config.dart';
import 'package:todolist/modules/category/presentation/provider/categories_provider.dart';
import 'package:todolist/modules/home/components/task_category_card.dart';
import 'package:todolist/utils/enums.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String path = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.microtask(() => context.read<CategoriesProvider>().getCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        backgroundColor: Palette.primary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, '/', (route) => false),
            icon: Icon(
              Icons.logout,
              color: Palette.secondary,
            ),
          ),
        ],
      ),
      body: _buildBody(),
      floatingActionButton: _buildFAB(),
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      backgroundColor: Palette.primary,
    );
  }

  Widget _buildBody() {
    return Consumer<CategoriesProvider>(
        builder: (context, categoriesProvider, _) {
      if (categoriesProvider.stateIs == StateIs.loading) {
        return Center(child: CircularProgressIndicator());
      }
      return Column(
        children: [
          _buildTopSection(),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              childAspectRatio: 1 / .8,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              children: List.generate(10, (index) {
                return TaskCategoryCard(
                  isCompleted: false,
                  categoryTitle: 'Database',
                  remainingTask: 4,
                );
              }),
            ),
          ),

          // TaskCategoryCard(
          //   isCompleted: true,
          //   categoryTitle: 'Database',
          //   remainingTask: 4,
          // ),
          // Text('data'),
        ],
      );
    });
  }

  Widget _buildTopSection() {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Palette.primary,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Palette.primary,
            Palette.primary.withOpacity(.8),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Ifany Dewi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Sabtu, 12 Februari 2022',
                style: TextStyle(
                  color: Palette.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (index) {
              return _buildCounterContent();
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildCounterContent() {
    return Column(
      children: [
        Text(
          '12',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Palette.secondary,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Task',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
