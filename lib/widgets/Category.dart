import 'package:Afterpay/utils/palette.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  const Category({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50)),
        child: Text(title, style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
