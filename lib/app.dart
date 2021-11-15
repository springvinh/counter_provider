import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_provider/providers/counter.dart';
import 'package:counter_provider/pages/counter_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>(create: (context) => Counter())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: CounterPage(),
      )
    );
  }
}