class Sale {
  String id;
  String carId;
  double amount;
  DateTime date;

  Sale({
    required this.id,
    required this.carId,
    required this.amount,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'carId': carId,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }

  factory Sale.fromMap(Map<String, dynamic> map, String id) {
    return Sale(
      id: id,
      carId: map['carId'],
      amount: map['amount'],
      date: DateTime.parse(map['date']),
    );
  }
}
