import 'package:flutter/material.dart';
import 'package:yes_no_app_flutter/config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes - No',
      theme: AppTheme(selectedColor: 1).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yes - No'),
        ),
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {}, child: const Text("Click me")),
        ),
      ),
    );
  }
}
