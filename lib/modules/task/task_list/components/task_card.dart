import 'package:flutter/material.dart';
import 'package:todolist/configs/palette.config.dart';

class TaskCard extends StatelessWidget {
  TaskCard({
    Key? key,
    required this.description,
    required this.taskTitle,
    required this.dueDate,
  }) : super(key: key);

  String taskTitle;
  String description;
  String dueDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 8,
            decoration: BoxDecoration(
              color: Palette.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Palette.textPlaceholder,
                  ),
                ),
                Text(
                  'Due date',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  dueDate,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
