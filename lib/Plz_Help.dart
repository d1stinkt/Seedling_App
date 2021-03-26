import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlzHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
              color: Color(0xffe98700),
              child: Center(
                  child: Ink(
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_downward_rounded),
                        color: Color(0xff142543),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )))),
          Container(
              color: Color(0xff142543),
              child: Center(
                  child: Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.question_answer),
                  color: Color(0xffe98700),
                  onPressed: () {},
                ),
              ))),
        ],
      ),
    ));
  }
}
