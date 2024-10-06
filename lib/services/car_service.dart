import '../models/car.dart';

class CarService {
  List<Car> getCars() {
    return [
      Car(
        id: '1',
        brand: 'Toyota',
        model: 'Corolla',
        price: 20000,
        imageUrl: 'assets/images/toyota_corolla.png',
        description: 'A reliable and efficient sedan.',
      ),
      Car(
        id: '2',
        brand: 'Honda',
        model: 'Civic',
        price: 22000,
        imageUrl: 'assets/images/honda_civic.png',
        description: 'A compact car with a sporty design.',
      ),
      Car(
        id: '3',
        brand: 'Ford',
        model: 'Mustang',
        price: 30000,
        imageUrl: 'assets/images/ford_mustang.png',
        description: 'A classic American muscle car.',
      ),
      // Add more cars here...
    ];
  }
}
