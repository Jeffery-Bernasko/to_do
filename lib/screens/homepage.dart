import 'package:flutter/material.dart';
import 'package:to_do/widgets.dart';

class Home extends StatefulWidget {
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 32.0,
            horizontal: 24.0,
            
          ),
          color: const Color(0xFFF6F6F6),
          child: Stack(
            children: [
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 32.0),
                  child: const Image(
                    image: AssetImage('assets/image/logo.png')
                    ),
                ),
          
                  TaskCardWidget(title: 'Get Started',)
              ],
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                height: 60.0,
                width: 60,
                decoration:  BoxDecoration(
                  color: const Color(0xFF7340FE),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Image(
                  image: AssetImage(
                    'assets/images/add_icon.png'
                  ),
                ),
              ),
            )
            ]
          )
        ),
      ),
     );
  }
}