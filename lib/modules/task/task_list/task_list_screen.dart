import 'package:flutter/material.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/configs/palette.config.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  static const String path = '/task-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        backButton: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Palette.darkPrimary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Palette.darkPrimary,
            ),
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Text('Task List'),
    );
  }
}
