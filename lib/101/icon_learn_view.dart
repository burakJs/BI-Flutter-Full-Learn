import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes _iconSizes = IconSizes();
  final IconColors _iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.background,
              size: IconSizes.iconSmall2x,
            ),
          ),
          const SizedBox(height: 50),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: _iconColors.froly,
              size: _iconSizes.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: _iconColors.froly,
              size: _iconSizes.iconSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
