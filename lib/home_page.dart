import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0.0, num2 = 0.0, result = 0.0;

  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  void addition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 / num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "output : $result",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: InputDecoration(
                hintText: "Enter the Number 1",
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(
                hintText: "Enter the Number 2",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  splashColor: Colors.white,
                  child: Text("+"),
                  color: Colors.redAccent,
                  onPressed: () {
                    this.addition();
                  },
                )),
                Padding(padding: EdgeInsets.all(10.0)),
                Expanded(
                    child: RaisedButton(
                  splashColor: Colors.white,
                  child: Text("-"),
                  color: Colors.redAccent,
                  onPressed: () {
                    this.subtraction();
                  },
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  splashColor: Colors.white,
                  child: Text("*"),
                  color: Colors.redAccent,
                  onPressed: () {
                    this.multiply();
                  },
                )),
                Padding(padding: EdgeInsets.all(10.0)),
                Expanded(
                  child: RaisedButton(
                    splashColor: Colors.white,
                    child: Text("/"),
                    color: Colors.redAccent,
                    onPressed: () {
                      this.divide();
                    },
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(
                  child: RaisedButton(
                splashColor: Colors.white,
                child: Text(
                  "clear",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  this.clear();
                },
              )),
            ]),
          ],
        ),
      ),
    );
  }
}
