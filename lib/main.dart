import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytext = 20;

  Widget calcbtn(String txt, Color col, Color bcol) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(4),
          fixedSize: Size(60, 60),
          backgroundColor: bcol,
        ),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 30,
            color: col,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CALCULATOR',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      '0',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Divider(
              color: Colors.amber,
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(1)),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.amber,
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbtn('AC', Colors.black, Colors.amber),
                calcbtn('( )', Colors.black, Colors.amber),
                calcbtn('%', Colors.black, Colors.amber),
                calcbtn('/', Colors.black, Colors.amber),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbtn('9', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('8', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('7', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('x', Colors.black, Colors.amber),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbtn('6', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('5', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('4', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('-', Colors.black, Colors.amber),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbtn('3', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('2', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('1', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('+', Colors.black, Colors.amber),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbtn('+/-', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('0', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('.', Colors.white, Color.fromARGB(255, 60, 59, 59)),
                calcbtn('=', Colors.black, Colors.amber),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  // dynamic text = '0';
  // double num1 = 0;
  // double num2 = 0;
  // dynamic result = '';
  // dynamic finalresult = '';
  // dynamic opr = '';
  // dynamic preopr = '';

  // void calculator(txt) {
  //   if (txt == 'AC') {
  //     text = '0';
  //     num1 = 0;
  //     num2 = 0;
  //     result = '';
  //     finalresult = '0';
  //     opr = '';
  //     preopr = '';
  //   } else if (opr == '=' || txt == '=') {
  //     if (preopr == '+') {
  //       finalresult = add();
  //     } else if (preopr == '-') {
  //       finalresult = sub();
  //     } else if (preopr == 'x') {
  //       finalresult = mul();
  //     } else if (preopr == '/') {
  //       finalresult = div();
  //     }
  //   }
  // }
}
