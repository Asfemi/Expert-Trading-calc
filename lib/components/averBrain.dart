import 'package:flutter/material.dart';

class AverBrain {
  AverBrain({
    this.pricePerShare5,
    this.pricePerShare4,
    this.pricePerShare3,
    this.pricePerShare2,
    this.pricePerShare1,
    this.amountOfShares1,
    this.amountOfShares2,
    this.amountOfShares3,
    this.amountOfShares4,
    this.amountOfShares5,
  });

  final double amountOfShares1;
  final double pricePerShare1;
  final double amountOfShares2;
  final double pricePerShare2;
  final double amountOfShares3;
  final double pricePerShare3;
  final double amountOfShares4;
  final double pricePerShare4;
  final double amountOfShares5;
  final double pricePerShare5;

  String averageCalc() {
    double one = amountOfShares1 * pricePerShare1;
    double two = amountOfShares2 * pricePerShare2;
    double three = amountOfShares3 * pricePerShare3;
    double four = amountOfShares4 * pricePerShare4;
    double five = amountOfShares5 * pricePerShare5;

    double totalTop = one + two + three + four + five;
    if (five != 0) {
      double average = totalTop / 5;
      return average.toStringAsFixed(2);
    } else if (five == 0) {
      double average = totalTop / 4;
      return average.toStringAsFixed(2);
    } else if (four != 0) {
      double average = totalTop / 4;
      return average.toStringAsFixed(2);
    } else if (four == 0) {
      double average = totalTop / 3;
      return average.toStringAsFixed(2);
    } else if (three != 0) {
      double average = totalTop / 3;
      return average.toStringAsFixed(2);
    } else if (three == 0) {
      double average = totalTop / 2;
      return average.toStringAsFixed(2);
    } else if (two != 0) {
      double average = totalTop / 2;
      return average.toStringAsFixed(2);
    } else if (two == 0) {
      double average = amountOfShares1;
      return average.toStringAsFixed(2);
    }
  }
}
