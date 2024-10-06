  final CarService carService = CarService();

  @override
  Widget build(BuildContext context) {
    final List<Car> cars = carService.getCars();

    return Scaffold(
      appBar: AppBar(
        title: Text('Car Showroom Inventory'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (ctx, index) {
          return CarItem(car: cars[index]);
        },
      ),
    );
  }
}
EOL

# Create Car Detail Screen
cat <<EOL > lib/screens/car_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  CarDetailScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('\\${car.brand} \\${car.model}'),
      ),
      body: Column(
        children: [
          Image.asset(car.imageUrl),
          SizedBox(height: 20),
          Text(
            '\\${car.brand} \\${car.model}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Price: \$\\${car.price}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(car.description),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement booking or purchase action
            },
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
EOL

cat <<EOL > lib/screens/car_detail_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  CarDetailScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('\\${car.brand} \\${car.model}'),
      ),
      body: Column(
        children: [
          Image.asset(car.imageUrl),
          SizedBox(height: 20),
          Text(
            '\\${car.brand} \\${car.model}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Price: \$\\${car.price}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(car.description),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement booking or purchase action
            },
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
EOL

# Create Car Item Widget
cat <<EOL > lib/widgets/car_item.dart
import 'package:flutter/material.dart';
import '../models/car.dart';
import '../screens/car_detail_screen.dart';

class CarItem extends StatelessWidget {
  final Car car;

  CarItem({required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(car.imageUrl, width: 100, height: 100),
        title: Text('\\${car.brand} \\${car.model}'),
        subtitle: Text('Price: \$\\${car.price}'),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CarDetailScreen(car),
          ));
        },
      ),
    );
  }
}
EOL

cat <<EOL > lib/widgets/car_item.dart
import 'package:flutter/material.dart';
import '../models/car.dart';
import '../screens/car_detail_screen.dart';

class CarItem extends StatelessWidget {
  final Car car;

  CarItem({required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(car.imageUrl, width: 100, height: 100),
        title: Text('\\${car.brand} \\${car.model}'),
        subtitle: Text('Price: \$\\${car.price}'),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CarDetailScreen(car),
          ));
        },
      ),
    );
  }
}
EOL

# Create main.dart
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/car_inventory_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Showroom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarInventoryScreen(),
    );
  }
}
EOL

# Update pubspec.yaml
cat <<EOL >> pubspec.yaml

dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  http: ^0.14.0
  sqflite: ^2.0.0+4
  path_provider: ^2.0.0
  shared_preferences: ^2.0.6
  intl: ^0.17.0

flutter:
  assets:
    - assets/images/
EOL

# Create the assets/images directory if it doesn't exist
mkdir -p assets/images
# Print message indicating that files have been created
echo "Car dealer showroom system module has been generated successfully!"
# Build the Flutter project
echo "Building the Flutter project..."
flutter build apk --release
# Print completion message
echo "Build completed successfully!"
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
FLUTTER_PATH="$(pwd)/$PROJECT_NAME"
# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then     echo "Flutter is not installed. Please install Flutter and try again.";     exit; fi
# Create Flutter project
if [ ! -d "$FLUTTER_PATH" ]; then     flutter create "$PROJECT_NAME"; else     echo "Flutter project '$PROJECT_NAME' already exists."; fi
cd "$FLUTTER_PATH"
# Add required dependencies to pubspec.yaml
echo "Updating pubspec.yaml with necessary dependencies..."
cat <<EOL >> pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
  cloud_firestore: ^3.1.10
  firebase_core: ^2.10.0
  provider: ^6.1.4
  firebase_auth: ^5.5.0
EOL

# Create folder structure
echo "Creating folder structure..."
mkdir -p lib/models
mkdir -p lib/screens
mkdir -p lib/services
mkdir -p lib/widgets
# Create Car model
cat <<EOL > lib/models/car.dart
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
EOL

# Create Sale model
cat <<EOL > lib/models/sale.dart
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
EOL

# Create Firestore service
cat <<EOL > lib/services/firestore_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:aenzbi_app_flutter/models/car.dart';
import 'package:aenzbi_app_flutter/models/sale.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Car>> getCars() {
    return _db.collection('cars').snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => Car.fromMap(doc.data(), doc.id)).toList()
    );
  }

  Future<void> addCar(Car car) {
    return _db.collection('cars').add(car.toMap());
  }

  Future<void> updateCar(Car car) {
    return _db.collection('cars').doc(car.id).update(car.toMap());
  }

  Future<void> recordSale(Sale sale) {
    return _db.collection('sales').add(sale.toMap());
  }

  Stream<List<Sale>> getSales() {
    return _db.collection('sales').snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => Sale.fromMap(doc.data(), doc.id)).toList()
    );
  }
}
EOL

# Create POS Screen
cat <<EOL > lib/screens/pos_screen.dart
import 'package:flutter/material.dart';
import 'package:aenzbi_app_flutter/models/car.dart';
import 'package:aenzbi_app_flutter/services/firestore_service.dart';

class POSScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Showroom POS'),
      ),
      body: StreamBuilder<List<Car>>(
        stream: _firestoreService.getCars(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: \${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          List<Car> cars = snapshot.data!;
          return ListView.builder(
            itemCount: cars.length,
            itemBuilder: (context, index) {
              Car car = cars[index];
              return ListTile(
                title: Text('\${car.brand} \${car.model}'),
                subtitle: Text('Price: \$\${car.price}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    _showSaleDialog(context, car);
                  },
                  child: Text('Sell'),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showSaleDialog(BuildContext context, Car car) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Sale'),
          content: Text('Confirm sale of \${car.brand} \${car.model} for \$\${car.price}?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Sale sale = Sale(carId: car.id, amount: car.price, date: DateTime.now());
                _firestoreService.recordSale(sale);
                Navigator.pop(context);
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }
}
EOL

# Create Inventory Screen
cat <<EOL > lib/screens/inventory_screen.dart
import 'package:flutter/material.dart';
import 'package:aenzbi_app_flutter/models/car.dart';
import 'package:aenzbi_app_flutter/services/firestore_service.dart';

class InventoryScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Inventory'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _brandController,
              decoration: InputDecoration(labelText: 'Brand'),
            ),
            TextField(
              controller: _modelController,
              decoration: InputDecoration(labelText: 'Model'),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Car car = Car(
                  id: '',
                  brand: _brandController.text,
                  model: _modelController.text,
                  price: double.parse(_priceController.text),
                  description: 'New car',
                );
                _firestoreService.addCar(car);
                _brandController.clear();
                _modelController.clear();
                _priceController.clear();
              },
              child: Text('Add Car'),
            ),
          ],
        ),
      ),
    );
  }
}
EOL

# Create main.dart file
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/pos_screen.dart';
import 'screens/inventory_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi Car Dealer System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi Car Dealer'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => POSScreen()),
              );
            },
            child: Text('Go to POS'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InventoryScreen()),
              );
            },
            child: Text('Manage Inventory'),
          ),
        ],
      ),
    );
  }
}
EOL

# Install dependencies
echo "Installing dependencies..."
flutter run
# Run Flutter packages get to install the dependencies
flutter pub get
# Clean the project to ensure everything is set up correctly
flutter clean
# Build the project for web, Android, iOS, and Linux
echo "Building the Flutter project for all platforms..."
flutter build web
flutter build apk
flutter build ios
flutter build linux
# Create Firebase project
FIREBASE_PROJECT_NAME="aenzbi-business"
echo "Setting up Firebase project..."
firebase projects:create $FIREBASE_PROJECT_NAME --display-name "Aenzbi Business"
# Initialize Firebase in the project
cd "$FLUTTER_PATH"
# Initialize Firebase
firebase init
# Add Firebase hosting to the project
firebase hosting:sites:create $FIREBASE_PROJECT_NAME
# Add Firestore and Authentication to the Firebase project
firebase firestore:database:create --project $FIREBASE_PROJECT_NAME
firebase auth:import auth/users.json --project $FIREBASE_PROJECT_NAME
# Create a GitHub repository for the project
GITHUB_REPO_NAME="aenzbi-app-flutter"
echo "Creating GitHub repository..."
git init
git add .
git commit -m "Initial commit for Car Dealer System and POS module"
gh repo create $GITHUB_REPO_NAME --public --source=. --remote=origin
# Create GitHub Actions workflow for CI/CD
mkdir -p .github/workflows
cat <<EOL > .github/workflows/firebase-deploy.yml
name: Firebase Deploy

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Set up Node.js
        uses: actions/setup-node@v2
        with:
          node-version: '14'

      - name: Install Firebase Tools
        run: npm install -g firebase-tools

      - name: Deploy to Firebase
        env:
          FIREBASE_TOKEN: \${{ secrets.FIREBASE_TOKEN }}
        run: |
          cd web
          firebase deploy --project $FIREBASE_PROJECT_NAME
EOL

# Notify user of completion
echo "Setup complete! Your Flutter project is ready at '$FLUTTER_PATH'."
echo "Firebase project '$FIREBASE_PROJECT_NAME' has been created."
echo "GitHub repository '$GITHUB_REPO_NAME' has been set up."
echo "A GitHub Actions workflow for Firebase deployment has been created in '.github/workflows/firebase-deploy.yml'."
# Provide final instructions
echo "Remember to configure Firebase and GitHub Secrets for automatic deployment."
echo "You can now run the Flutter app using: flutter run."
flutter build
flutter build web
flutter build apk
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define project directory
PROJECT_DIR="aenzbi-app-flutter"
# Create project directory if it doesn't exist
if [ ! -d "$PROJECT_DIR" ]; then   echo "Creating project directory: $PROJECT_DIR";   mkdir "$PROJECT_DIR"; fi
cd "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOF > pubspec.yaml
name: aenzbi_app_flutter
description: A Flutter application for Aenzbi Business including Car Dealer System, POS functionalities, and more.

publish_to: 'none' # Remove this line if you want to publish to pub.dev

version: 1.0.0+1

environment:
  sdk: ">=2.18.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.11.0
  firebase_auth: ^5.2.0
  cloud_firestore: ^5.8.0
  provider: ^6.1.5
  http: ^0.15.0
  flutter_localizations:
    sdk: flutter
  intl: ^0.18.1
  cached_network_image: ^3.2.0
  image_picker: ^0.8.7
  dio: ^5.4.0
  shared_preferences: ^2.1.0
  carousel_slider: ^4.0.0
  flutter_slidable: ^1.0.0
  flutter_staggered_grid_view: ^0.4.0
  flutter_svg: ^1.1.1
  fluttertoast: ^8.2.0
  qr_flutter: ^4.0.0
  flutter_webview_plugin: ^0.14.0
  google_fonts: ^2.3.2
  firebase_messaging: ^14.5.0
  url_launcher: ^6.0.17
  flutter_bloc: ^8.1.0
  location: ^4.4.0
  geolocator: ^9.0.0
  flutter_map: ^0.14.0
  sqflite: ^2.0.0
  get_it: ^7.2.0

# Platform-specific dependencies
flutter:
  plugin:
    platforms:
      android:
        package: com.aenzbi.app
        pluginClass: AenzbiAppPlugin
      ios:
        pluginClass: AenzbiAppPlugin
      linux:
        pluginClass: AenzbiAppPlugin
      macos:
        pluginClass: AenzbiAppPlugin
      windows:
        pluginClass: AenzbiAppPlugin
      web:
        pluginClass: AenzbiAppPlugin

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.0
  build_web_compilers: ^3.2.0
  lint: ^2.0.0

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/
    - assets/data/ # Static data files if any

  fonts:
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto-Regular.ttf
        - asset: assets/fonts/Roboto-Bold.ttf
          weight: 700
EOF

echo "pubspec.yaml has been created."
# Create necessary directories for assets and fonts
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/fonts
mkdir -p assets/data
# Create platform-specific directories
mkdir -p android
mkdir -p ios
mkdir -p linux
mkdir -p macos
mkdir -p windows
mkdir -p web
echo "Directories for assets, fonts, and platforms have been created."
# Prompt to run flutter pub get
echo "Run 'flutter pub get' in the $PROJECT_DIR directory to install dependencies."
ls -la
flutter run
cd
#!/bin/bash
# Define project directory
PROJECT_DIR="aenzbi-app-flutter"
# Navigate to project directory
cd "$PROJECT_DIR" || { echo "Project directory $PROJECT_DIR does not exist."; exit 1; }
# Function to build for Android
build_android() {   echo "Building for Android...";   flutter build apk --release;   if [ $? -eq 0 ]; then     echo "Android build completed successfully.";   else     echo "Android build failed.";   fi; }
# Function to build for iOS
build_ios() {   echo "Building for iOS...";   flutter build ios --release;   if [ $? -eq 0 ]; then     echo "iOS build completed successfully.";   else     echo "iOS build failed.";   fi; }
# Function to build for Web
build_web() {   echo "Building for Web...";   flutter build web --release;   if [ $? -eq 0 ]; then     echo "Web build completed successfully.";   else     echo "Web build failed.";   fi; }
# Function to build for Linux
build_linux() {   echo "Building for Linux...";   flutter build linux --release;   if [ $? -eq 0 ]; then     echo "Linux build completed successfully.";   else     echo "Linux build failed.";   fi; }
# Function to build for macOS
build_macos() {   echo "Building for macOS...";   flutter build macos --release;   if [ $? -eq 0 ]; then     echo "macOS build completed successfully.";   else     echo "macOS build failed.";   fi; }
# Function to build for Windows
build_windows() {   echo "Building for Windows...";   flutter build windows --release;   if [ $? -eq 0 ]; then     echo "Windows build completed successfully.";   else     echo "Windows build failed.";   fi; }
# Execute builds
build_android
build_ios
build_web
build_linux
build_macos
build_windows
echo "All builds completed."
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define project directory
PROJECT_DIR="aenzbi-app-flutter"
# Create pubspec.yaml
cat <<EOF > pubspec.yaml
name: aenzbi_app_flutter
description: A Flutter application for Aenzbi Business including Car Dealer System, POS functionalities, and more.

publish_to: 'none' # Remove this line if you want to publish to pub.dev

version: 1.0.0+1

environment:
  sdk: ">=2.18.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.11.0
  firebase_auth: ^5.2.0
  cloud_firestore: ^5.8.0
  provider: ^6.1.5
  http: ^0.15.0
  flutter_localizations:
    sdk: flutter
  intl: ^0.18.1
  cached_network_image: ^3.2.0
  image_picker: ^0.8.7
  dio: ^5.4.0
  shared_preferences: ^2.1.0
  carousel_slider: ^4.0.0
  flutter_slidable: ^1.0.0
  flutter_staggered_grid_view: ^0.4.0
  flutter_svg: ^1.1.1
  fluttertoast: ^8.2.0
  qr_flutter: ^4.0.0
  flutter_webview_plugin: ^0.14.0
  google_fonts: ^2.3.2
  firebase_messaging: ^14.5.0
  url_launcher: ^6.0.17
  flutter_bloc: ^8.1.0
  location: ^4.4.0
  geolocator: ^9.0.0
  flutter_map: ^0.14.0
  sqflite: ^2.0.0
  get_it: ^7.2.0

# Platform-specific dependencies
flutter:
  plugin:
    platforms:
      android:
        package: com.aenzbi.app
        pluginClass: AenzbiAppPlugin
      ios:
        pluginClass: AenzbiAppPlugin
      linux:
        pluginClass: AenzbiAppPlugin
      macos:
        pluginClass: AenzbiAppPlugin
      windows:
        pluginClass: AenzbiAppPlugin
      web:
        pluginClass: AenzbiAppPlugin

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.0
  build_web_compilers: ^3.2.0
  lint: ^2.0.0

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/
    - assets/data/ # Static data files if any

  fonts:
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto-Regular.ttf
        - asset: assets/fonts/Roboto-Bold.ttf
          weight: 700
EOF

echo "pubspec.yaml has been created."
# Create necessary directories for assets and fonts
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/fonts
mkdir -p assets/data
# Create platform-specific directories
mkdir -p android
mkdir -p ios
mkdir -p linux
mkdir -p macos
mkdir -p windows
mkdir -p web
echo "Directories for assets, fonts, and platforms have been created."
# Prompt to run flutter pub get
echo "Run 'flutter pub get' in the $PROJECT_DIR directory to install dependencies."
flutter build
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define project directory
PROJECT_DIR="aenzbi-app-flutter"
# Function to build for Android
build_android() {   echo "Building for Android...";   flutter build apk --release;   if [ $? -eq 0 ]; then     echo "Android build completed successfully.";   else     echo "Android build failed.";   fi; }
# Function to build for iOS
build_ios() {   echo "Building for iOS...";   flutter build ios --release;   if [ $? -eq 0 ]; then     echo "iOS build completed successfully.";   else     echo "iOS build failed.";   fi; }
# Function to build for Web
build_web() {   echo "Building for Web...";   flutter build web --release;   if [ $? -eq 0 ]; then     echo "Web build completed successfully.";   else     echo "Web build failed.";   fi; }
# Function to build for Linux
build_linux() {   echo "Building for Linux...";   flutter build linux --release;   if [ $? -eq 0 ]; then     echo "Linux build completed successfully.";   else     echo "Linux build failed.";   fi; }
# Function to build for macOS
build_macos() {   echo "Building for macOS...";   flutter build macos --release;   if [ $? -eq 0 ]; then     echo "macOS build completed successfully.";   else     echo "macOS build failed.";   fi; }
# Function to build for Windows
build_windows() {   echo "Building for Windows...";   flutter build windows --release;   if [ $? -eq 0 ]; then     echo "Windows build completed successfully.";   else     echo "Windows build failed.";   fi; }
# Execute builds
build_android
build_ios
build_web
build_linux
build_macos
build_windows
echo "All builds completed."
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Create modules directory
mkdir -p lib/modules
# Create main.dart file
cat <<EOF > lib/main.dart
import 'package:flutter/material.dart';
import 'modules/car_dealer_system/car_dealer_screen.dart';
import 'modules/pos/pos_screen.dart';
import 'modules/accounting/accounting_screen.dart';
import 'modules/restaurant_pos/restaurant_pos_screen.dart';
import 'modules/hotel_pms/hotel_pms_screen.dart';
import 'modules/music_film/music_film_screen.dart';

void main() {
  runApp(AenzbiApp());
}

class AenzbiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CarDealerScreen(),
    POSScreen(),
    AccountingScreen(),
    RestaurantPOSScreen(),
    HotelPMSScreen(),
    MusicFilmScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi Business Application'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Car Dealer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'POS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Accounting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restaurant POS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hotel PMS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Music & Film',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
EOF

# Create module directories and placeholder files
declare -a modules=("car_dealer_system" "pos" "accounting" "restaurant_pos" "hotel_pms" "music_film")
for module in "${modules[@]}"; do     mkdir -p "lib/modules/$module";     echo "// ${module^} Screen" > "lib/modules/$module/${module}_screen.dart"; done
echo "Project structure for $PROJECT_NAME created successfully."
flutter run
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Run Flutter clean
echo "Cleaning the project..."
flutter clean
# Format the Dart code
echo "Formatting Dart code..."
flutter format .
# Analyze the project for potential issues
echo "Analyzing the project..."
flutter analyze
# Check for unused imports
echo "Checking for unused imports..."
dart pub global activate dart_code_metrics
dart pub global run dart_code_metrics:check --exclude-ignored
# Organize imports (requires the Dart SDK)
echo "Organizing imports..."
dart fix --apply
echo "Code formatting and organization complete."
# Optionally, you can run the app to check if everything is working fine
# echo "Running the application..."
# flutter run
echo "Done."
flutter run
cd
cd /
cd  
cd ..
cd itsupport
cd ..
ls -la
cd itsupport
ls -la
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Run Flutter clean
echo "Cleaning the project..."
flutter clean
# Format the Dart code
echo "Formatting Dart code..."
flutter format .
# Analyze the project for potential issues
echo "Analyzing the project..."
flutter analyze
# Check for unused imports
echo "Checking for unused imports..."
dart pub global activate dart_code_metrics
dart pub global run dart_code_metrics:check --exclude-ignored
# Organize imports (requires the Dart SDK)
echo "Organizing imports..."
dart fix --apply
echo "Code formatting and organization complete."
# Optionally, you can run the app to check if everything is working fine
# echo "Running the application..."
# flutter run
echo "Done."
ls -la
cd itsupport
git add .
git commit -m "update"
git push origin main
git pull origin main
git fetch
