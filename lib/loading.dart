import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          //TODO: Implement Loading Widget of Choice DONE
          child: Stack(
            children: [
              Positioned(
                left: constraints.maxWidth * 0.32,
                top: constraints.maxWidth * 0.82,
                child: Container(
                  // decoration: BoxDecoration(shape: BoxShape.circle),
                  height: constraints.maxWidth * 0.375,
                  width: constraints.maxWidth * 0.375,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              SpinKitRipple(
                color: Colors.white,
                size: constraints.maxWidth * 0.75,
              ),
            ],
          ),
        ),
      );
    });
  }
}
