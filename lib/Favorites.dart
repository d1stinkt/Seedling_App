import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
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
                        color: Colors.black,
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
                  icon: Icon(Icons.android),
                  color: Color(0xffe98700),
                  onPressed: () {},
                ),
              ))),
        ],
      ),
    ));
  }
}
