import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.title, required this.onPress});

  final String title;
  final VoidCallback onPress;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color _color = const Color(0xFFC8D9AF);

  void _toggleIsActive<T>(T details) {
    setState(() {
      _color = _color == const Color(0xFFC8D9AF)
          ? const Color(0xFFB3C39C)
          : const Color(0xFFC8D9AF);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      onTapDown: _toggleIsActive,
      onTapUp: _toggleIsActive,
      child: AnimatedContainer(
        height: 50,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: _color,
        ),
        duration: const Duration(microseconds: 1000),
        curve: Curves.fastOutSlowIn,
        child: Center(
          child: Text(widget.title),
        ),
      ),
    );
  }
}
