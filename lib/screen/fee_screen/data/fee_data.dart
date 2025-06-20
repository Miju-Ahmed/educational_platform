class FeeData {
  final String reciptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(
      {required this.reciptNo,
      required this.month,
      required this.date,
      required this.paymentStatus,
      required this.totalAmount,
      required this.btnStatus});
}

List<FeeData> fee = [
  FeeData(
      reciptNo: '478596',
      month: 'November',
      date: '6 Nov 1999',
      paymentStatus: 'Pending',
      totalAmount: '950\$',
      btnStatus: 'PAY NOW'),
      FeeData(
      reciptNo: '478596',
      month: 'September',
      date: '7 Sep 2002',
      paymentStatus: 'Paid',
      totalAmount: '2000\$',
      btnStatus: 'DOWNLOAD'),
      FeeData(
      reciptNo: '878496',
      month: 'April',
      date: '1 April 2002',
      paymentStatus: 'Paid',
      totalAmount: '950\$',
      btnStatus: 'DOWNLOAD')
];
