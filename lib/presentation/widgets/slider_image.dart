import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  final NetworkImage image;
  final String text;

  const SliderImage({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: widget.image,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Positioned(
          bottom: 10,
          child: Text(widget.text),
        ),
      );
}
