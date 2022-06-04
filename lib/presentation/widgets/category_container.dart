import 'package:bex_store/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatefulWidget {
  final String? image;
  const CategoryContainer({Key? key, this.image}) : super(key: key);

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) => Container(
        color: lightBorderColor,
        decoration:
            BoxDecoration(border: Border.all(color: borderColor, width: 0.2)),
        width: MediaQuery.of(context).size.width * 2.0,
        height: MediaQuery.of(context).size.height * 0.01,
        child: Image(image: AssetImage(widget.image!)),
      );
}
