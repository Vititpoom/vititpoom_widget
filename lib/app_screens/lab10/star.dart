import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({super.key});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
          onTap: _handleTap,
          child: Icon(_active ? Icons.star : Icons.star_border_outlined)),
    );
  }
}
