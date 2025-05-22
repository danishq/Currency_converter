import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build fn');
    var clickHere = 'Convert to INR';
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(9)),
      borderSide: BorderSide(color: Colors.brown),
    );
    final enterField = Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextField(
        controller: textEditingController,
        style: TextStyle(color: const Color.fromARGB(255, 194, 180, 140)),
        decoration: InputDecoration(
          label: Text(
            'Please enter the amount in USD',

            style: TextStyle(color: const Color.fromARGB(255, 176, 176, 126)),
          ),
          prefixIcon: Icon(Icons.monetization_on),
          prefixIconColor: const Color.fromARGB(255, 138, 129, 102),
          filled: true,
          fillColor: const Color.fromARGB(255, 85, 73, 73),
          border: border,
          focusedBorder: border,
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
    final emptyButton = TextButton(
      onPressed: () {
        convert();
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color.fromARGB(255, 80, 67, 67),
        ),
        foregroundColor: WidgetStatePropertyAll(
          const Color.fromARGB(255, 244, 236, 187),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      child: Text(
        clickHere,
        style: TextStyle(
          fontSize: 15,
          //color: const Color.fromARGB(255, 211, 200, 168),
        ),
      ),
      //shape: OutlinedBorder(borderRadius: BorderRadius.all(Radius.circular(30)),),
    );
    final textHead = Text(
      result.toString(),
      style: const TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 238, 221, 169),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 48, 45),
        title: Text(
          'Currency Convertor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 53, 70, 94),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 55, 50, 49),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [textHead, enterField, emptyButton],
        ),
      ),
    );
  }
}
