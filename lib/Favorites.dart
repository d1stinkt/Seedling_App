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
              color: Colors.orange[700],
              child: Center(
                  child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.indigo,
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
              color: Colors.indigo[900],
              child: Center(
                  child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.indigo,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.android),
                  color: Colors.orange[700],
                  onPressed: () {},
                ),
              ))),
        ],
      ),
    ));
  }
}
