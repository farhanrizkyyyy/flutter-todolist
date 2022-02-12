import 'package:flutter/material.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/configs/palette.config.dart';

class UpdateCategoryScreen extends StatelessWidget {
  const UpdateCategoryScreen({Key? key}) : super(key: key);

  static const String path = '/update-category';

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
              Icons.delete,
              color: Palette.darkPrimary,
            ),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text('Update Category'),
    );
  }
}
