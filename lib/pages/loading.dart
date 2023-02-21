import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
        child: LoadingAnimationWidget.fourRotatingDots(
          color: Color.fromARGB(255, 103, 58, 183), size: 100
          ),
      ),
    );
  }
}


// return Scaffold(
    //   body: Center(
    //     child: Text(
    //           'Please wait',
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 20
    //           ),
    //   ),
    // )
    // );