import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'test2', home: calApp());
  }
}

class calApp extends StatefulWidget {
  const calApp({super.key});

  @override
  State<calApp> createState() => _calAppState();
}

class _calAppState extends State<calApp> {
  String num1 = "";
  String num2 = "";
  String operator = "";
  String display = "0";

  void pressNumber(String value) {
    setState(() {
      if (operator.isEmpty) {
        num1 += value;
        display = num1;
      } else {
        num2 += value;
        display = num2;
      }
    });
  }

  void pressOperator(String op) {
    setState(() {
      operator = op;
    });
  }

  void calculate() {
    if (num1.isEmpty || num2.isEmpty || operator.isEmpty) return;

    double n1 = double.parse(num1);
    double n2 = double.parse(num2);
    double result = 0;

    switch (operator) {
      case "+":
        result = n1 + n2;
        break;
      case "-":
        result = n1 - n2;
        break;
      case "*":
        result = n1 * n2;
        break;
      case "/":
        result = n1 / n2;
        break;
    }

    setState(() {
      display = result.toString();
      num1 = result.toString();
      num2 = "";
      operator = "";
    });
  }

  void clear() {
    setState(() {
      num1 = "";
      num2 = "";
      operator = "";
      display = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              display,
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
            SizedBox(height: 15),

            // 7 8 9 +
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calcBtn("7", () => pressNumber("7")),
                calcBtn("8", () => pressNumber("8")),
                calcBtn("9", () => pressNumber("9")),
                calcBtn("+", () => pressOperator("+")),
              ],
            ),
            SizedBox(height: 10),

            // 4 5 6 -
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calcBtn("4", () => pressNumber("4")),
                calcBtn("5", () => pressNumber("5")),
                calcBtn("6", () => pressNumber("6")),
                calcBtn("-", () => pressOperator("-")),
              ],
            ),
            SizedBox(height: 10),

            // 1 2 3 *
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calcBtn("1", () => pressNumber("1")),
                calcBtn("2", () => pressNumber("2")),
                calcBtn("3", () => pressNumber("3")),
                calcBtn("*", () => pressOperator("*")),
              ],
            ),
            SizedBox(height: 10),

            // 0 C = /
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calcBtn("0", () => pressNumber("0")),
                calcBtn("C", clear),
                calcBtn("=", calculate),
                calcBtn("/", () => pressOperator("/")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ------ ปุ่มลัดสำหรับสร้าง FAB ------
  Widget calcBtn(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
