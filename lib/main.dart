import 'package:flutter/material.dart';
import 'package:item_management/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: MyHomePage(title: 'Item Management'), // Set MyHomePage as the home
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(Icons.android_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            Text("Header"),
            Text('Sub-header'),
            Text('Paragraph'),
          ],
        ),
      ),
    );
  }
}

void onPressed() {}
