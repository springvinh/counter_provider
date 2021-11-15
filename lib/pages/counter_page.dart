import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_provider/providers/counter.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Counter counter = Provider.of<Counter>(context);

    return Scaffold(
      body: Center(
        child: Text(counter.count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => counter.increment(),
          child: Icon(Icons.add),
      ),
    );
  }
}
