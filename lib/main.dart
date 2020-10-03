import 'package:flutter/material.dart';
import 'package:stockinvestmentcalc/Screens/averageScreen.dart';
import 'package:stockinvestmentcalc/Screens/fibonacciScreen.dart';
import 'package:stockinvestmentcalc/Screens/home_Screen.dart';
import 'package:stockinvestmentcalc/Screens/sipScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: PLCalc.id,
      routes: {
        PLCalc.id: (context) => PLCalc(),
        AverageCalc.id: (context) => AverageCalc(),
        FibonnaciScreen.id: (context) => FibonnaciScreen(),
        SipScreen.id: (context) => SipScreen(),
      },
    );
  }
}
