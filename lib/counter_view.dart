// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_app_provider/counter_model.dart';
import 'package:provider/provider.dart';
class counter_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<counter_model>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Center(
        child: Text(
          'Counter Value is: ${counterModel.count}',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterModel.increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () => counterModel.decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}