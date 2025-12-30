import 'package:intl/intl.dart';

class MoneyCurrency {
  static final _usdFormatter = NumberFormat.currency(
    locale: 'en_US',
    symbol: '\$',
    decimalDigits: 0,
  );

  static String formatUSD(num value) {
    return _usdFormatter.format(value);
  }
}
