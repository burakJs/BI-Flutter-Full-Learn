import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  title: const RandomImage(),
                  subtitle: const Text('How do you use your card'),
                  minVerticalPadding: 0,
                  dense: true,
                  leading: Container(
                    height: 100,
                    width: 20,
                    alignment: Alignment.bottomCenter,
                    color: Colors.red,
                    child: const Icon(Icons.money),
                  ),
                  trailing: Container(
                    width: 20,
                    color: Colors.red,
                    child: const Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
