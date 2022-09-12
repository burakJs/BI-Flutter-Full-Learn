import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          _CenterCircularRedProgress(),
        ],
      ),
      body: const LinearProgressIndicator(),
    );
  }
}

class _CenterCircularRedProgress extends StatelessWidget {
  const _CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);
  final Color redColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: redColor,
        strokeWidth: 10,
        value: 0.5,
        backgroundColor: Colors.white,
      ),
    );
  }
}
