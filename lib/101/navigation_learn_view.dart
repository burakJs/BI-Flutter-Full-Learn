import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn_view.dart';

class NavigationLearnView extends StatefulWidget {
  const NavigationLearnView({super.key});

  @override
  State<NavigationLearnView> createState() => _NavigationLearnViewState();
}

class _NavigationLearnViewState extends State<NavigationLearnView> with NavigationManager {
  final List<int> _selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? _selectedItems.add(index) : _selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailLearnView(isOkay: _selectedItems.contains(index)),
              );
              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(color: _selectedItems.contains(index) ? Colors.green : Colors.red),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () async {},
      ),
    );
  }
}

mixin NavigationManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
        settings: const RouteSettings(),
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) => widget,
        settings: const RouteSettings(),
      ),
    );
  }
}
