import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() {
    return _CounterScreenState();
  }
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                  print(counter);
                });
              },
              child: const Text('Minus'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                  print(counter);
                });
              },
              child: const Text('Plus'),
            )
          ],
        ),
      ),
    );
  }
}
