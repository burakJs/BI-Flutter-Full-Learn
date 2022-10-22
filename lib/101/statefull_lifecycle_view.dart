import 'package:flutter/material.dart';

class StateFullLifeCycleView extends StatefulWidget {
  const StateFullLifeCycleView({super.key, required this.message});
  final String message;

  @override
  State<StateFullLifeCycleView> createState() => _StateFullLifeCycleViewState();
}

class _StateFullLifeCycleViewState extends State<StateFullLifeCycleView> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StateFullLifeCycleView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _message = '';
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  void _computeName() {
    _message += _isOdd ? ' Tek' : ' Çift';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = 'A';
                });
              },
              child: Text(_message)),
    );
  }
}
