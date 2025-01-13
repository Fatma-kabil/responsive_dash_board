class TransationModel {
  final String title, amount, date;
  final bool isWithdrawer;

  const TransationModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.isWithdrawer});
}
