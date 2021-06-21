import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image(
                  image: AssetImage('assets/images/blog.png'),
                  width: 202,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
