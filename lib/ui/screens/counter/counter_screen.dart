import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterScreen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              '2',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              width: 20.0,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
