import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todolist/configs/palette.config.dart';

class TaskCategoryCard extends StatelessWidget {
  TaskCategoryCard({
    Key? key,
    required this.isCompleted,
    required this.categoryTitle,
    required this.remainingTask,
  }) : super(key: key);

  bool isCompleted;
  String categoryTitle;
  int remainingTask;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/task-list'),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIndicator(isCompleted: isCompleted),
            SizedBox(height: 20),
            Text(
              categoryTitle,
              style: TextStyle(
                color: Palette.primary,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            Text(
              isCompleted
                  ? 'Yay! Your task is done!'
                  : 'You have $remainingTask task left',
              style: TextStyle(
                fontSize: 10,
                color: Palette.textPlaceholder,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator({required bool isCompleted}) {
    return Container(
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: isCompleted ? Color(0xFF8FBC30) : Color(0xFFFC9918),
      ),
    );
  }
}
