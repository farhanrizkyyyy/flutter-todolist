import 'package:flutter/material.dart';
import 'package:todolist/components/main_appbar.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({Key? key}) : super(key: key);

  static const String path = '/add-category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        backButton: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text('Add Category'),
    );
  }
}
