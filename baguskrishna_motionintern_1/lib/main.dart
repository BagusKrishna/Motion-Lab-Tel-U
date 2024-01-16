import 'package:baguskrishna_motionintern_tugas_week_1/transaksi.dart';
import 'package:flutter/material.dart';
import 'transaksi.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: transaksi(), // kalau mau liat page transaksi
      //home : homeScreen(), // kalau mau liat page homescreen
    );
  }
}