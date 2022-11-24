// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  int san;

  NewPage({super.key, required this.san});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Тапшырма 02',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 330,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xffBDBDBD),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'сан: ',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      '${widget.san}',
                      style: const TextStyle(fontSize: 24.0),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
