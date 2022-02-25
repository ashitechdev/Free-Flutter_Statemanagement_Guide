import 'package:flutter/material.dart';
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
                  height: 120,
                  padding: const EdgeInsets.all(15),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "This is a consumer widget in home screen and here I will only access the variable on this screen and also listen to changes.",
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Number = " + dataClass.number.toString(),
                        textScaleFactor: 1.3,
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
                    Navigator.pushNamed(context, '/screen2');
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellow.shade300),
                  ),
                  child: const Text("Go to Screen 2")),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen3');
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellow.shade300),
                  ),
                  child: const Text("Go to Screen 3")),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen4');
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellow.shade300),
                  ),
                  child: const Text("Go to Screen 4"))
            ],
          ),
        ),
      ),
    );
  }
}
