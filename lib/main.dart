import 'package:countigapp/screens/counterpage.dart';
import 'package:countigapp/screens/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ValueChange(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        home: CounterPage(),
      ),
    );
  }
}

