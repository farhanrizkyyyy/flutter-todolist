import 'package:flutter/material.dart';
import 'package:todolist/components/main_appbar.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        backButton: true,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      // child: Text('Task List'),
      child: Text('Add Task'),
    );
  }
}
