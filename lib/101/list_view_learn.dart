import 'package:flutter/material.dart';

class ListViewLearnView extends StatefulWidget {
  const ListViewLearnView({super.key});

  @override
  State<ListViewLearnView> createState() => _ListViewLearnViewState();
}

class _ListViewLearnViewState extends State<ListViewLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, child: const Card()),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          // XX
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const _ListDemo(),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo();

  @override
  State<_ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('Hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('By');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
