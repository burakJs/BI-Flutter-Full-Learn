import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.username});
  final String name = 'Burak';
  final String? username;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: const TextStyle(
                wordSpacing: 2,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),
            Text(
              'Hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColors.welcomeColor,
                  ),
            ),
            Text(username ?? ''),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.red,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
