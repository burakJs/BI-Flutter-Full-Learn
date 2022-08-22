import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Save')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {
              // Servise istek at
              // Sayfa rengi düzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(10),
            ),
            onPressed: () {},
            child: const SizedBox(
                width: 200,
                child: Text(
                  'Save',
                  textAlign: TextAlign.center,
                )),
          ),
          OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.abc), label: const Text('Data')),
          InkWell(onTap: () {}, child: const Text('Custom')),
          Container(height: 200, color: Colors.white),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Borders: [CircleBorder(), RoundedRectangleBorder()], 