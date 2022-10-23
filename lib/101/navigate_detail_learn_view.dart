import 'package:flutter/material.dart';

class NavigateDetailLearnView extends StatefulWidget {
  const NavigateDetailLearnView({super.key, this.isOkay = false});
  final bool isOkay;
  @override
  State<NavigateDetailLearnView> createState() => _NavigateDetailLearnViewState();
}

class _NavigateDetailLearnViewState extends State<NavigateDetailLearnView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.check,
            color: widget.isOkay ? Colors.red : Colors.green,
          ),
          label: Text(widget.isOkay ? 'Remove it' : 'Check it'),
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkay);
          },
        ),
      ),
    );
  }
}
