import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text(
          'dicee',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: const dicePage(),
      //floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class dicePage extends StatefulWidget {
  const dicePage({super.key});

  @override
  State<dicePage> createState() => _dicePageState();
}

class _dicePageState extends State<dicePage> {
  int leftDicenumber = 1;
  int RightDicenumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDicenumber = (Random().nextInt(6)) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$leftDicenumber.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        RightDicenumber = (Random().nextInt(6)) + 1;
                      });
                    },
                    child: Image.asset(
                      'images/dice$RightDicenumber.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              setState(() {
                RightDicenumber = (Random().nextInt(6)) + 1;
                leftDicenumber = (Random().nextInt(6)) + 1;
              });
            },
            child: const Icon(
              Icons.swap_calls,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
