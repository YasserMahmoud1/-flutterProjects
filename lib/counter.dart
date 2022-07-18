import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var c = 0;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  c--;
                  setState((){});
                },
                child: Text(
                  'MINUS',
                ),
            ),
            Text(
              '$c',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            TextButton(
              onPressed: (){
                c++;
                setState((){});
              },
              child: Text(
                'PLUS',
              ),
            ),

          ],
        ),
      ),
    );
  }
}
