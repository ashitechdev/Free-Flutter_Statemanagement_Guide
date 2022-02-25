import 'package:flutter/material.dart';
import 'package:project2_access_and_listen/views/homepage.dart';
import 'package:project2_access_and_listen/views/screen2.dart';
import 'package:project2_access_and_listen/views/screen3.dart';
import 'package:project2_access_and_listen/views/screen4.dart';
import 'package:provider/provider.dart';

import 'Data/mydataclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataClass(),
      child: MaterialApp(initialRoute: '/', routes: {
        '/': (context) => const MyHomePage(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
        '/screen4': (context) => const Screen4(),
      }),
    );
  }
}
