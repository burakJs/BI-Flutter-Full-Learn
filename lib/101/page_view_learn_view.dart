import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn_view.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';
import 'package:flutter_full_learn/101/stack_learn_view.dart';

class PageViewLearnView extends StatefulWidget {
  const PageViewLearnView({super.key});

  @override
  State<PageViewLearnView> createState() => _PageViewLearnViewState();
}

class _PageViewLearnViewState extends State<PageViewLearnView> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('$_currentPageIndex'),
          ),
          const Spacer(),
          FloatingActionButton(
            child: const Icon(Icons.chevron_left),
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.chevron_right),
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        padEnds: false,
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLearnView(),
          IconLearnView(),
          const StackLearnView(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
