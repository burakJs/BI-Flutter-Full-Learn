import 'package:flutter/material.dart';

class ListViewBuilderLearnView extends StatefulWidget {
  const ListViewBuilderLearnView({super.key});

  @override
  State<ListViewBuilderLearnView> createState() => _ListViewBuilderLearnViewState();
}

class _ListViewBuilderLearnViewState extends State<ListViewBuilderLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: 15,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: Image.network('https://picsum.photos/200'),
                ),
                Text('$index'),
              ],
            ),
          );
        },
      ),
    );
  }
}
