import 'package:flutter/material.dart';
import 'package:stockinvestmentcalc/components/averBrain.dart';
import 'averResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:stockinvestmentcalc/Screens/sipScreen.dart';
import 'fibonacciScreen.dart';
import 'package:stockinvestmentcalc/constants.dart';
import 'package:stockinvestmentcalc/Screens/home_Screen.dart';

class AverageCalc extends StatefulWidget {
  static String id = 'averageScreen';

  @override
  _AverageCalcState createState() => _AverageCalcState();
}

class _AverageCalcState extends State<AverageCalc> {
  double amountOfShares1 = 0.0;
  double pricePerShare1 = 0.0;
  double amountOfShares2 = 0.0;
  double pricePerShare2 = 0.0;
  double amountOfShares3 = 0.0;
  double pricePerShare3 = 0.0;
  double amountOfShares4 = 0.0;
  double pricePerShare4 = 0.0;
  double amountOfShares5 = 0.0;
  double pricePerShare5 = 0.0;

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
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text('Amount of shares :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          amountOfShares1 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          amountOfShares1 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text('Price per share :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          pricePerShare1 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          pricePerShare1 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0\$'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text('Amount of shares :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          amountOfShares2 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          amountOfShares2 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text('Price per share :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          pricePerShare2 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          pricePerShare2 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0\$'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text('Amount of shares :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          amountOfShares3 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          amountOfShares3 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text('Price per share :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          pricePerShare3 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          pricePerShare3 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0\$'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text('Amount of shares :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          amountOfShares4 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          amountOfShares4 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text('Price per share :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          pricePerShare4 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          pricePerShare4 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0\$'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text('Amount of shares :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          amountOfShares5 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          amountOfShares5 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text('Price per share :'),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      onChanged: (String value) {
                                        try {
                                          pricePerShare5 =
                                              double.parse(value.toString());
                                        } catch (exception) {
                                          pricePerShare5 = 0.0;
                                        }
                                      },
                                      decoration: kTextFieldDesign.copyWith(
                                          hintText: '0.0\$'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
                        AverBrain aver = AverBrain(
                          pricePerShare1: pricePerShare1,
                          amountOfShares1: amountOfShares1,
                          pricePerShare2: pricePerShare2,
                          amountOfShares2: amountOfShares2,
                          pricePerShare3: pricePerShare3,
                          amountOfShares3: amountOfShares3,
                          pricePerShare4: pricePerShare4,
                          amountOfShares4: amountOfShares4,
                          pricePerShare5: pricePerShare5,
                          amountOfShares5: amountOfShares5,
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AverResult(
                              averageResult: aver.averageCalc(),
                            ),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Calculate',
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
                              Navigator.pushNamed(context, SipScreen.id);
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
