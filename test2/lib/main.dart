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
            SizedBox(
              height: 20,
            ),

            // 7 8 9  +
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "7";
                        display = num1;
                      } else {
                        num2 += "7";
                        display = num2;
                      }
                    });
                  },
                  child: Text("7", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "8";
                        display = num1;
                      } else {
                        num2 += "8";
                        display = num2;
                      }
                    });
                  },
                  child: Text("8", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "9";
                        display = num1;
                      } else {
                        num2 += "9";
                        display = num2;
                      }
                    });
                  },
                  child: Text("9", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "+";
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            // 4 5 6  /
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "4";
                        display = num1;
                      } else {
                        num2 += "4";
                        display = num2;
                      }
                    });
                  },
                  child: Text("4", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "5";
                        display = num1;
                      } else {
                        num2 += "5";
                        display = num2;
                      }
                    });
                  },
                  child: Text("5", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "6";
                        display = num1;
                      } else {
                        num2 += "6";
                        display = num2;
                      }
                    });
                  },
                  child: Text("6", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "-";
                    });
                  },
                  child: Text("-", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // 1 2 3 *
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "1";
                        display = num1;
                      } else {
                        num2 += "1";
                        display = num2;
                      }
                    });
                  },
                  child: Text("1", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "2";
                        display = num1;
                      } else {
                        num2 += "2";
                        display = num2;
                      }
                    });
                  },
                  child: Text("2", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "3";
                        display = num1;
                      } else {
                        num2 += "3";
                        display = num2;
                      }
                    });
                  },
                  child: Text("3", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "*";
                    });
                  },
                  child: Text("*", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // 0 C = /
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operator.isEmpty) {
                        num1 += "0";
                        display = num1;
                      } else {
                        num2 += "0";
                        display = num2;
                      }
                    });
                  },
                  child: Text("0", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num1 = "";
                      num2 = "";
                      operator = "";
                      display = "0";
                    });
                  },
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 20),
                  ),
                  backgroundColor: Colors.deepPurple, // Custom background color
                  foregroundColor: Colors.white, // Custom icon color
                  elevation: 8.0, // Increased elevation
                  shape: RoundedRectangleBorder(
                    // Custom shape with rounded corners
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (num1 == "" || num2 == "") return;

                      double a = double.parse(num1);
                      double b = double.parse(num2);
                      double result = 0;

                      if (operator == "+") result = a + b;
                      if (operator == "-") result = a - b;
                      if (operator == "*") result = a * b;
                      if (operator == "/") result = a / b;

                      display = result.toString();
                      num1 = result.toString();
                      num2 = "";
                      operator = "";
                    });
                  },
                  child: Text("=", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operator = "/";
                    });
                  },
                  child: Text("/", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
