import 'dart:developer';
import 'package:flutter/material.dart';

//bottom navigation bar for the app connect nav routes to each.
// create custom nav bar for the app bottom
class NavBarButtons extends StatefulWidget {
  late final int pageIndex;
  final String name;
  final int value;
  NavBarButtons(
      {Key? key,
      required this.pageIndex,
      required this.name,
      required this.value})
      : super(key: key);

  @override
  State<NavBarButtons> createState() => _NavBarButtonsState();
}

class _NavBarButtonsState extends State<NavBarButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.pageIndex = 0;
        });
      },
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                log("tapped");
                widget.pageIndex = widget.value;
              });
            },
            icon: widget.pageIndex == widget.value
                ? const Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.home_filled,
                    size: 30,
                    color: Colors.black,
                  ),
            splashColor: Colors.black,
          ),
          Text(
            widget.name,
            style: const TextStyle(fontSize: 15, color: Colors.black),
          )
        ],
      ),
    );
  }
}
