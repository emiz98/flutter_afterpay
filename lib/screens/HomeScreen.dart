import 'dart:developer';

import 'package:Afterpay/utils/mock.dart';
import 'package:Afterpay/utils/palette.dart';
import 'package:Afterpay/widgets/Category.dart';
import 'package:Afterpay/widgets/Header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            const Header(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: appSpacing),
                child: Row(
                  children: [
                    for (var category in categories) Category(title: category)
                  ],
                ),
              ),
            ),
            Text("Banner section"),
          ],
        ),
      ),
    );
  }
}
