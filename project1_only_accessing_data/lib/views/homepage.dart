import 'package:flutter/material.dart';
import 'package:project1_only_accessing_data/views/screen2.dart';
import 'package:project1_only_accessing_data/views/screen3.dart';
import 'package:provider/provider.dart';

import '../Data/mydataclass.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// This is a Consumer
              /// this is how it is written
              /// its job is to consume data from dataClass
              Consumer<DataClass>(builder: (context, dataClass, _) {
                return Container(
                  height: 100,
                  padding: const EdgeInsets.all(15),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("This is a consumer widget."),
                      Text(
                        dataClass.someData,
                        textScaleFactor: 1.1,
                      ),
                    ],
                  ),
                );
              }),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Screen2()));
                  },
                  child: const Text("Go to Screen 2")),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Screen3()));
                  },
                  child: const Text("Go to Screen 3"))
            ],
          ),
        ),
      ),
    );
  }
}
