import 'package:flutter/material.dart';

class ShapesStory extends StatelessWidget {
  final String? name;
  final double width;
  final double height;

  const ShapesStory({
    super.key,
    this.name,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Column(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                ),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
          name != null
              ? Center(
                  child: Text(
                    name!,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
