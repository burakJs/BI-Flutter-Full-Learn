import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,
              child: const Text('Burak'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const EdgeInsets pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
