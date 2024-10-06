class Car {
  String id;
  String model;
  String brand;
  double price;
  String description;
  bool available;

  Car({
    required this.id,
    required this.model,
    required this.brand,
    required this.price,
    required this.description,
    this.available = true,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'model': model,
      'brand': brand,
      'price': price,
      'description': description,
      'available': available,
    };
  }

  factory Car.fromMap(Map<String, dynamic> map, String id) {
    return Car(
      id: id,
      model: map['model'],
      brand: map['brand'],
      price: map['price'],
      description: map['description'],
      available: map['available'],
    );
  }
}
