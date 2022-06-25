class Holding {
  final String fundName;
  final String fundValue;
  final String fundDayChange;
  final String fundPercentageChange;
  final bool isProfit;
  final String investedAmount;
  final List color;
  final List<String> list;

  Holding(
      {required this.fundName,
      required this.fundValue,
      required this.fundDayChange,
      required this.fundPercentageChange,
      required this.isProfit,
      required this.investedAmount,
      required this.color,
      required this.list});
}
