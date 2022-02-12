// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/configs/palette.config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String path = '/home';

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
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text('Home'),
    );
  }
}
