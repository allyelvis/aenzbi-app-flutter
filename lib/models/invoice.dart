class Invoice {
  final String id;
  final String customerName;
  final List<Product> products;
  final double totalAmount;

  Invoice({
    required this.id,
    required this.customerName,
    required this.products,
    required this.totalAmount,
  });
}
