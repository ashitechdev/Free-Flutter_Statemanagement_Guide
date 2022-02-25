import 'package:flutter/material.dart';
import 'package:project1_only_accessing_data/Data/mydataclass.dart';
import 'package:project1_only_accessing_data/views/homepage.dart';
import 'package:project1_only_accessing_data/views/screen2.dart';
import 'package:project1_only_accessing_data/views/screen3.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => DataClass(),
      child: MaterialApp(initialRoute: '/', routes: {
        '/': (context) => const MyHomePage(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
      }),
    );
  }
}
