import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});

  final String _title = 'Create your first note';
  final String _description = 'Add a note';
  final String _createNote = 'Create a note';
  final String _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBookWithoutPath),
            _TitleWidget(title: _title),
            Padding(
                padding: PaddingItems.verticalPadding,
                child: _SubTitleWidget(textAlign: TextAlign.start, title: _description * 10)),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight)
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}

/// Center TextWidget using [textAlign]
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({this.textAlign = TextAlign.center, required this.title});

  final TextAlign? textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
