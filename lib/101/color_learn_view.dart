import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        'data',
        style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).errorColor),
      ),
    );
  }
}

class ColorsItems {
  static const Color porche = Color(0xFFEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
