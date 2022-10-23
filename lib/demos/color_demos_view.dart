// Bir ekran olacak
// Bu ekranda 3 button ve bunlara basınca renk değişimi olacak
// Seçili olan button selected icon olsun

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _bottomNavBarItem(Colors.red, LanguageItems.redTitle),
          _bottomNavBarItem(Colors.yellow, LanguageItems.yellowTitle),
          _bottomNavBarItem(Colors.blue, LanguageItems.blueTitle),
        ],
        onTap: (int value) => changeBackgroundColor(_MyColors.values[value].color),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavBarItem(Color color, String label) {
    return BottomNavigationBarItem(
      icon: _ColorContainer(color: color),
      label: label,
    );
  }
}

enum _MyColors {
  red(Colors.red),
  yellow(Colors.yellow),
  blue(Colors.blue);

  final Color color;
  const _MyColors(this.color);
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}
