import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String? title;
  final String? desc;
  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
            vertical: 32.0,
            horizontal: 24.0,
    ),
    margin: EdgeInsets.only(bottom: 20.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24.0)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( title ??
          '(Get Started)',
          style: TextStyle(
            color: Color(0xFF211551),
            fontSize: 22.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(desc ?? 'No description added',
            style: TextStyle(
              color: Color(0xFF868290),
              fontSize: 16.0,
              height: 1.5
            ),
          ),
        ),

      ],
    ),
    );
  }
}