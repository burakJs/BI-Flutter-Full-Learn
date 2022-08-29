import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMarginAll,
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(
                child: Text('Burak'),
              ),
            ),
          ),
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(
                child: Text('Burak'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMarginAll = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMarginAll,
      elevation: 10,
      child: child,
    );
  }
}

// Borders 
// StadiumBorder(), CircleBorder(), RoundedRectangleBorder()