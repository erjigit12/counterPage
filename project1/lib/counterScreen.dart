// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'Appbar1.dart';
import 'NewPage.dart';

class CounterScrean extends StatefulWidget {
  const CounterScrean({super.key});

  @override
  State<CounterScrean> createState() => _CounterScreanState();
}

class _CounterScreanState extends State<CounterScrean> {
  int number = 0;

// increment - sandy 1ge chonoitup beret.
// setState - tirkemeni buzup kairadan kurup beret.
  void increment() {
    setState(() {
      number++;
    });
  }

// decrement - sandy 1ge kichireitip beret.
  void decrement() {
    setState(() {
      number--;
    });
  }

// Scaffold - tirkemenin bardyk beti.
// AppBar - tirkemenin shapkasy.
// title - AppBardagy textti kamtyit.
// style - textke style beruu.
// elevation - AppBardyn astyndagy syzykty jok kylat.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          hoverColor: Colors.yellow,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Appbar1(),
              ),
            );
          },
          child: Container(
            width: 100,
            height: 100,
            child: const Icon(
              Icons.add_alert,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        // Column - elementterdi vertikalduu tyrdo jaigashtyruu.
        // Row - elementterdi gorizontalduu tyrdo jaigashtyruu.
        // mainAxisAlignment - Column jana Rowdy kalagan jerge jyldyryp beret.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Inkwell - kandaidyr bir widgetti knopkaga ailandyrat.
            // onTap -  knopkany baskanda ichindegi funksia ishteit.
            // Navigator - marshrut
            // push - bashka betke otkorot, birok artka kaitarbait.
            InkWell(
              onTap: () {
                increment();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPage(san: number),
                  ),
                );
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
                      '$number',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    decrement();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff005EA6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                InkWell(
                  onTap: () {
                    increment();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff005EA6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
