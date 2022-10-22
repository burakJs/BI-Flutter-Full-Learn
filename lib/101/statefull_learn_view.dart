import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';

import '../product/language/language_items.dart';

class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({super.key});

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

class _StatefullLearnViewState extends State<StatefullLearnView> {
  int _countValue = 0;

  void _updateCount(bool isIncrement) {
    setState(() {
      _countValue += isIncrement ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deIncrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text('$_countValue', style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCount(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deIncrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCount(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
