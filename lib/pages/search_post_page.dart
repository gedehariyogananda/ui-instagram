import 'package:flutter/material.dart';

class SearchPostPage extends StatelessWidget {
  const SearchPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(5.0),
            right: Radius.circular(5.0),
          ),
          color: Colors.grey[100],
        ),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Center(
            child: Icon(
              Icons.person_add,
              size: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
