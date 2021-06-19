import 'package:flutter/material.dart';

class ColorToggle extends StatefulWidget {
  @override
  _ColorToggle createState() => _ColorToggle();
}

class _ColorToggle extends State<ColorToggle> {
  // 1
  bool _hasBeenPressed = false;
  List<Color> _colors = <Color>[
    Colors.blue,
    Colors.red,
    Colors.black,
    Colors.green
  ];

  int _currentColorIndex = 0;

  void _incrementColorIndex() {
    setState(() {
      if (_currentColorIndex < _colors.length - 1) {
        _currentColorIndex++;
      } else {
        _currentColorIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: new Text(
                'Change Color',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              // 2
              style: ElevatedButton.styleFrom(
                primary: _hasBeenPressed ? Colors.blue : Colors.black,
              ),

              // 3
              onPressed: () => {
                setState(
                  () {
                    _hasBeenPressed = !_hasBeenPressed;
                  },
                )
              },
              /*
              The code used to cycle through the colors
              color: _colors[_currentColorIndex],
              onPressed: () => {_incrementColorIndex()},
              */
            )
          ],
        ),
      ),
    );
  }
}
