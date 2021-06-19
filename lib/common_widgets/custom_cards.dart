import 'package:flutter/material.dart';

class CustomCards extends StatefulWidget {
  CustomCards({
    required this.child,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
    required this.height,
    required this.width,
  });

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final double width;
  final VoidCallback onPressed;

  @override
  _CustomCardsState createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        child: widget.child,
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          primary: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                widget.borderRadius,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
