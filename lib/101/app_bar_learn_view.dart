import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _appBarTitle = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
