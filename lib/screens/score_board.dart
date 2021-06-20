import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      color: Colors.black38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Summary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 32.0,
            ),
            color: Colors.black54,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          )
        ],
      ),
    );
  }
}
