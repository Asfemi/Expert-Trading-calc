import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stockinvestmentcalc/Screens/sipScreen.dart';
import 'package:stockinvestmentcalc/Screens/averageScreen.dart';
import 'fibonacciScreen.dart';
import 'package:stockinvestmentcalc/Screens/home_Screen.dart';

class AverResult extends StatelessWidget {
  AverResult({@required this.averageResult});

  final String averageResult;
  static String id = 'averageScreen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: size.height * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.23),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Center(
                              child: Text(
                            'Average Calculator',
                            style: TextStyle(fontSize: 20),
                          )),
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                            indent: 50,
                            endIndent: 50,
                          ),
                          Container(
                            height: size.height * 0.5,
                            width: size.width,
                            child: Center(
                                child: Text(
                              averageResult + '\$',
                              style: TextStyle(
                                  fontSize: 55, color: Colors.greenAccent),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //key: UniqueKey(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.23),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          're-Calculate',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'Source sans pro',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      //SizedBox(width: 50),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'assets/1.png',
                              height: 80,
                              width: 80,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, PLCalc.id);
                            },
                          ),
                          Text(
                            'profit',
                            style: TextStyle(color: Colors.lightGreen),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'assets/2.png',
                              height: 80,
                              width: 80,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, AverageCalc.id);
                            },
                          ),
                          Text(
                            'Average',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'assets/3.png',
                              height: 80,
                              width: 80,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, FibonnaciScreen.id);
                            },
                          ),
                          Text(
                            'fibonnaci',
                            style: TextStyle(color: Colors.lightGreen),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'assets/4.png',
                              height: 80,
                              width: 80,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, PLCalc.id);
                            },
                          ),
                          Text(
                            'Sip',
                            style: TextStyle(color: Colors.lightGreen),
                          ),
                        ],
                      ),
                      Spacer(),
                      //SizedBox(width: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
