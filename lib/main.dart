import 'package:currency/CurrencyConverter_cupertino.dart';
import 'package:currency/Currency_Converter.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
  runApp(const MineApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterPage(),
    );
  }
}

class MineApp extends StatelessWidget
{
  const MineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}