import 'package:flutter/material.dart';

class TextProfileDetail extends StatelessWidget {
  final int jumlah;
  final String name;

  const TextProfileDetail(
      {super.key, required this.jumlah, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            jumlah.toString(),
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            name,
            style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
