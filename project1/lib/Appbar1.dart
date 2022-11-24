// ignore_for_file: file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'counterScreen.dart';

class Appbar1 extends StatelessWidget {
  const Appbar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
        title: const Text(
          'facebook',
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          const Icon(
            Icons.favorite_outline,
            color: Colors.black,
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.send,
            color: Colors.black,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CounterScrean(),
                    ),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
