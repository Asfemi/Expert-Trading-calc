import 'package:flutter/material.dart';
import 'package:stockinvestmentcalc/Screens/averageScreen.dart';
import 'package:stockinvestmentcalc/Screens/fibonacciScreen.dart';
import 'package:stockinvestmentcalc/Screens/home_Screen.dart';

class PLResult extends StatelessWidget {
  PLResult({
    @required this.profitAndLoss,
    this.purchasedFor,
    this.soldFor,
    this.reward,
    this.netReturn,
    this.risk,
    this.breakEven,
  });

  final String profitAndLoss;
  final String purchasedFor;
  final String netReturn;
  final breakEven;
  final String risk;
  final String reward;
  final String soldFor;

  static String id = 'PLResult';

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
                            'Stock profit Calculator',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 50,
                          endIndent: 50,
                        ),
                        Text('Profit or Loss :'),
                        Container(
                          width: size.width,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Colors.lightGreen,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              //'500 dollars',
                              profitAndLoss + '\$',

                              style: TextStyle(
                                  fontSize: 20, color: Colors.lightGreen),
                            ),
                          ),
                        ),
                        Text('Net Return On Investment :'),
                        Container(
                          width: size.width,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Colors.lightGreen,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              netReturn + '\$',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.lightGreen),
                            ),
                          ),
                        ),
                        Text('Break even share price :'),
                        Container(
                          width: size.width,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Colors.lightGreen,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              breakEven + '\$',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.lightGreen),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('Purchased For :'),
                                Container(
                                  width: 150,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                      color: Colors.lightGreen,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      purchasedFor + '\$',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.lightGreen),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: <Widget>[
                                Text('Sold For :'),
                                Container(
                                  width: 150,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                      color: Colors.lightGreen,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      soldFor + '\$',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.lightGreen),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: size.width * 0.32),
                            Container(
                              color: Colors.red,
                              height: 25,
                              width: size.width * 0.12,
                              child: Center(
                                  child: Text(
                                risk,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                            Container(
                              color: Colors.green,
                              height: 25,
                              width: size.width * 0.12,
                              child: Center(
                                  child: Text(
                                reward,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                            SizedBox(width: size.width * 0.32),
                          ],
                        ),
                        Center(child: Text('Risk : Reward')),
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
                          style: TextStyle(color: Colors.green),
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
                          style: TextStyle(color: Colors.lightGreen),
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
    ));
  }
}
