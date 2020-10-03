import 'package:flutter/cupertino.dart';
import 'package:stockinvestmentcalc/Screens/PLResult.dart';
import 'package:stockinvestmentcalc/Screens/fibonacciScreen.dart';
import 'package:stockinvestmentcalc/Screens/sipScreen.dart';
import 'package:stockinvestmentcalc/constants.dart';
import 'package:stockinvestmentcalc/Screens/averageScreen.dart';
import 'package:stockinvestmentcalc/components/calcBrain.dart';
import 'package:flutter/material.dart';

class PLCalc extends StatefulWidget {
  static String id = 'home_Screen';

  @override
  _PLCalcState createState() => _PLCalcState();
}

class _PLCalcState extends State<PLCalc> with SingleTickerProviderStateMixin {
  final Duration duration = Duration(milliseconds: 450);
  bool isCollasped = true;
  double screenHeight, screenWidth;
  AnimationController _controller;
  Animation<double> _menuScaleAnimation;
  Animation<double> _scaleAnimation;
  Animation<Offset> _slideAnimation;
  double amountOfShares = 0.0;
  double pricePerShareBuy = 0.0;
  double buyCommission = 0.0;
  double sellCommission = 0.0;
  double pricePerShareSell = 0.0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashBoard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    Size size = MediaQuery.of(context).size;
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.1),
                ClipOval(
                  child: Image.asset(
                    'assets/B.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 5),
                  child: Text('ASFemi',
                      style: TextStyle(color: Colors.black, fontSize: 25)),
                ),
                SizedBox(height: size.height * 0.1),
                MenuText(
                  text: 'DashBoard',
                  icon: Icons.dashboard,
                ),
                SizedBox(height: 50),
                MenuText(
                  text: 'Settings',
                  icon: Icons.settings,
                ),
                SizedBox(height: 50),
                MenuText(
                  text: 'my Notes',
                  icon: Icons.note_add,
                ),
                SizedBox(height: size.height * 0.22),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Exit',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashBoard(context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: isCollasped ? 0 : 0.4 * screenWidth,
      right: isCollasped ? 0 : -0.6 * screenWidth,
      duration: duration,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          elevation: 8,
          animationDuration: duration,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                leading: InkWell(
                  onTap: () {
                    setState(() {
                      if (isCollasped) {
                        _controller.forward();
                      } else
                        _controller.reverse();

                      isCollasped = !isCollasped;
                    });
                    // Navigator.pushNamed(context, MenuDashBoardPage.id);
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.green,
                  ),
                ),
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
                                )),
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                  indent: 50,
                                  endIndent: 50,
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  onChanged: (String value) {
                                    try {
                                      amountOfShares =
                                          double.parse(value.toString());
                                    } catch (exception) {
                                      amountOfShares = 0.0;
                                    }
                                  },
                                  decoration: kTextFieldDesign.copyWith(
                                      hintText: 'Amount Of Shares'),
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  onChanged: (String value) {
                                    try {
                                      pricePerShareBuy =
                                          double.parse(value.toString());
                                    } catch (exception) {
                                      pricePerShareBuy = 0.0;
                                    }
                                  },
                                  decoration: kTextFieldDesign.copyWith(
                                      hintText: 'Price Per Share bought'),
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  onChanged: (String value) {
                                    try {
                                      buyCommission =
                                          double.parse(value.toString());
                                    } catch (exception) {
                                      buyCommission = 0.0;
                                    }
                                  },
                                  decoration: kTextFieldDesign.copyWith(
                                      hintText: 'Buy Commission'),
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  onChanged: (String value) {
                                    try {
                                      sellCommission =
                                          double.parse(value.toString());
                                    } catch (exception) {
                                      sellCommission = 0.0;
                                    }
                                  },
                                  decoration: kTextFieldDesign.copyWith(
                                      hintText: 'Sell Commission'),
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  onChanged: (String value) {
                                    try {
                                      pricePerShareSell =
                                          double.parse(value.toString());
                                    } catch (exception) {
                                      pricePerShareSell = 0.0;
                                    }
                                  },
                                  decoration: kTextFieldDesign.copyWith(
                                      hintText: 'Price Per Shares Sold'),
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
                              CalcBrain calc = CalcBrain(
                                  pricePerShareSell: pricePerShareSell,
                                  amountOfShares: amountOfShares,
                                  buyCommission: buyCommission,
                                  sellCommission: sellCommission,
                                  pricePerShareBuy: pricePerShareBuy);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PLResult(
                                    profitAndLoss:
                                        calc.profitOrLossCalculater(),
                                    purchasedFor: calc.purchasedFor(),
                                    soldFor: calc.soldFor(),
                                    netReturn: calc.netReturns(),
                                    reward: calc.reward(),
                                    risk: calc.risk(),
                                    breakEven: calc.breakEven(),
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
                            Spacer(),
                            //SizedBox(width: 50),
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
                                    Navigator.pushNamed(
                                        context, AverageCalc.id);
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
                                    Navigator.pushNamed(
                                        context, FibonnaciScreen.id);
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
          ),
        ),
      ),
    );
  }
}

class MenuText extends StatelessWidget {
  const MenuText({@required this.text, this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.black,
        ),
        Text(text, style: TextStyle(color: Colors.black, fontSize: 22)),
      ],
    );
  }
}
