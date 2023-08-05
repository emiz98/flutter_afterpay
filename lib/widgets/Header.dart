import 'package:Afterpay/utils/palette.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appSpacing),
      child: Container(
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(appSpacing),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(height: 25, child: Image.asset("assets/logo.png")),
                const Icon(
                  Icons.favorite_border,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(Icons.search_outlined),
                  hintText: "Search brands, products, stores..."),
            )
          ],
        ),
      ),
    );
  }
}
