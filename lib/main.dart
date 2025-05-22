import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter.dart';

void main(){
  runApp(CurrencyConvertorApp());
}

class CurrencyConvertorApp extends StatelessWidget {
  const CurrencyConvertorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: CurrencyConverter(),
    );
  }
}