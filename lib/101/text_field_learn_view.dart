import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearnView extends StatefulWidget {
  const TextFieldLearnView({super.key});

  @override
  State<TextFieldLearnView> createState() => _TextFieldLearnViewState();
}

class _TextFieldLearnViewState extends State<TextFieldLearnView> {
  final _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            inputFormatters: [TextProjectInputFormatter()._formatter],
            decoration: _InputDecorator().emailInput,
            textInputAction: TextInputAction.next,
          ),
          const TextField(
            minLines: 2,
            maxLines: 4,
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: _key,
      duration: const Duration(milliseconds: 200),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    return newValue.copyWith(text: newValue.text.replaceAll('a', 'B'));
  });
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
