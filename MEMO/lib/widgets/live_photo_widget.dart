import 'package:flutter/material.dart';

class LivePhotoWidget extends StatefulWidget {
  @override
  _LivePhotoWidgetState createState() => _LivePhotoWidgetState();
}

class _LivePhotoWidgetState extends State<LivePhotoWidget> {
  int _currentIndex = 0;
  late List<String> _photoFrames;
  late bool _isHovered;

  @override
  void initState() {
    super.initState();
    _photoFrames = [
      'assets/photo1.jpg',
      'assets/photo2.jpg',
      'assets/photo3.jpg',
    ];
    _isHovered = false;
  }

  void _startAnimation() {
    _isHovered = true;
    Future.delayed(Duration(milliseconds: 300), _animateFrames);
  }

  void _stopAnimation() {
    setState(() {
      _isHovered = false;
      _currentIndex = 0;
    });
  }

  void _animateFrames() {
    if (_isHovered) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _photoFrames.length;
      });
      Future.delayed(Duration(milliseconds: 300), _animateFrames);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _startAnimation(),
      onExit: (_) => _stopAnimation(),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_photoFrames[_currentIndex]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}