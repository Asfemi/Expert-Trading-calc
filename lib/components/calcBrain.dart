import 'package:flutter/cupertino.dart';
import 'package:stockinvestmentcalc/Screens/home_Screen.dart';

class CalcBrain {
  CalcBrain({
    @required this.sellCommission,
    @required this.pricePerShareBuy,
    @required this.buyCommission,
    @required this.amountOfShares,
    @required this.pricePerShareSell,
  });

  final amountOfShares;
  final pricePerShareBuy;
  final buyCommission;
  final sellCommission;
  final pricePerShareSell;

  double _profitOrloss;
  double _totalpurchased;
  double _totalSold;
  double _netReturn;

  String profitOrLossCalculater() {
    double intiall = amountOfShares * pricePerShareBuy;
    double finall = amountOfShares * pricePerShareSell;
    double commision = buyCommission + sellCommission;
    _profitOrloss = finall - intiall - commision;

    return _profitOrloss.toStringAsFixed(2);
  }

  String purchasedFor() {
    _totalpurchased = amountOfShares * pricePerShareBuy + buyCommission;
    return _totalpurchased.toStringAsFixed(2);
  }

  String soldFor() {
    _totalSold = amountOfShares * pricePerShareSell - sellCommission;
    return _totalSold.toStringAsFixed(2);
  }

  String netReturns() {
    double initiall = amountOfShares * pricePerShareBuy;
    double finall = amountOfShares * pricePerShareSell;
    double commision = buyCommission + sellCommission;
    double profitOrloss = finall - initiall - commision;
    double totalReturn = profitOrloss / initiall;
    var percent = 7 / 9;
    _netReturn = totalReturn * 100;
    return _netReturn.toStringAsFixed(2);
  }

  String breakEven() {
    double premiumStart = _totalpurchased - _totalSold;
    double premium = premiumStart / _totalSold;
    double breakeven = _totalpurchased - premium;
    return breakeven.toStringAsFixed(2);
  }

  String reward() {
    if (_totalpurchased > _totalSold) {
      double reward = _totalSold / _totalpurchased;
      return reward.toStringAsFixed(1);
    } else {
      double reward = _totalpurchased / _totalSold;
      return reward.toStringAsFixed(1);
    }
  }

  String risk() {
    if (_totalSold > _totalpurchased) {
      double risk = _totalpurchased / _totalSold;
      return risk.toStringAsFixed(1);
    } else {
      double risk = _totalSold / _totalpurchased;
      return risk.toStringAsFixed(1);
    }
  }
}
