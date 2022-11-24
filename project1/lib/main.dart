import 'package:flutter/material.dart';
import 'Appbar1.dart';

// void - fuction, ech nerse kaitarbait.
// main - function, bashtalgych.
// () - main din bir funksia ekendigin bildiret.
// {} - funksianyn telosu (funksianyn atkargan ishi ).
// runApp - finksia (tirkeneni jurguzup beret. Material.dart tan kelet.)
// const - ozgortkongo mumkun emes.
// CounterPage: bir classtyn aty
void main() {
  runApp(const CounterPage());
}

// extends: Parent classtan Child classka muras aluu
// StatelessWidget: Widgetten kelgen bir class
// super: child classtagy proportylerdy parent classka otkorot
// key: bir widgetke achkuchbergibiz kelse berebis
// StatelessWidget: ====> ?
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

// @override - parent classtagu funksainy kaira orgortup jazuu
  @override
  // Widget - build metodunun kaytaruu tibi
  // build - StatelessWidget ke tiesheluu bir funksia.
  // BuildContext context: build funlsiasy ala turgan parametr
  // BuildContext: =====> ?
  Widget build(BuildContext context) {
    // return - jyiyntykty kaitaryp beret.
    // MaterialApp - tirkimemin enn syrtky katmary.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: MaterialApptyn proportysi. String alat
      title: 'Биринчи Тиркеме',
      // theme: MaterialApptyn proportysi. ThemeData alat
      // ThemeData: temanun datasu, tema beruuchu widget
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /* home - kyiynki classtyn atkarylyshy uchun jol,
         MaterialApptyn proportysi. Widget alat*/
      home: const Appbar1(),
    );
  }
}
