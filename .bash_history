
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '16'

    - name: Install Firebase CLI
      run: npm install -g firebase-tools

    - name: Install Dependencies
      run: cd functions && npm ci

    - name: Deploy to Firebase Hosting and Functions
      env:
        FIREBASE_TOKEN: \${{ secrets.FIREBASE_TOKEN }}
      run: firebase deploy --only hosting,functions
EOL
     echo "GitHub Actions workflow setup complete."; }
# Initialize a git repository and push to GitHub
setup_git_repo() {     echo "Initializing Git repository and pushing to GitHub..."
    git init;     git add .;     git commit -m "Initial commit - Setup Firebase and GitHub Actions"
    GITHUB_REPO_URL="https://github.com/your-username/$PROJECT_NAME.git"    
    git remote add origin $GITHUB_REPO_URL;     git push -u origin main     echo "GitHub repository setup complete."; }
# Run the setup functions
setup_firebase_project
generate_firebase_functions
setup_github_actions
setup_git_repo
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then     echo "Flutter is not installed. Installing Flutter..."    
    git clone https://github.com/flutter/flutter.git -b stable    
    export PATH="$PATH:`pwd`/flutter/bin";     echo "Flutter installed."; else     echo "Flutter is already installed."; fi
# Create Flutter project directory if not exists
PROJECT_NAME="aenzbi-app-flutter"
if [ ! -d "$PROJECT_NAME" ]; then     echo "Creating new Flutter project: $PROJECT_NAME";     flutter create $PROJECT_NAME; else     echo "Project $PROJECT_NAME already exists."; fi
# Navigate into the project directory
cd $PROJECT_NAME
# Set up initial project structure
echo "Setting up project structure..."
mkdir -p lib/models lib/screens lib/widgets lib/services lib/utils assets/images
# Create car model file
cat <<EOL > lib/models/car.dart
class Car {
  final String id;
  final String brand;
  final String model;
  final double price;
  final String imageUrl;
  final String description;
  final bool isAvailable;

  Car({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isAvailable = true,
  });
}
EOL

# Create car inventory screen file
cat <<EOL > lib/screens/car_inventory_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';

class CarInventoryScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
      id: '1',
      brand: 'Toyota',
      model: 'Corolla',
      price: 20000,
      imageUrl: 'assets/images/toyota_corolla.png',
      description: 'A reliable and efficient sedan.',
    ),
    // Add more cars here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Showroom Inventory'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (ctx, index) {
          final car = cars[index];
          return Card(
            child: ListTile(
              leading: Image.asset(car.imageUrl, width: 100, height: 100),
              title: Text('\${car.brand} \${car.model}'),
              subtitle: Text('Price: \$\${car.price}'),
              onTap: () {
                // Navigate to car detail screen
              },
            ),
          );
        },
      ),
    );
  }
}
EOL

# Create car detail screen file
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
        title: Text('\${car.brand} \${car.model}'),
      ),
      body: Column(
        children: [
          Image.asset(car.imageUrl),
          SizedBox(height: 20),
          Text(
            '\${car.brand} \${car.model}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Price: \$\${car.price}',
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

# Set up main.dart file
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/car_inventory_screen.dart';
import 'screens/car_detail_screen.dart';
import 'models/car.dart';

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
      routes: {
        '/car-detail': (ctx) => CarDetailScreen(ModalRoute.of(ctx)!.settings.arguments as Car),
      },
    );
  }
}
EOL

# Update pubspec.yaml file with dependencies
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
EOL

# Get Flutter packages
flutter pub get
# Run the Flutter app
echo "Running the app..."
flutter run
#!/bin/bash
# Navigate to the Flutter project directory
cd aenzbi-app-flutter || { echo "Directory aenzbi-app-flutter not found!"; exit 1; }
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Create necessary directories
mkdir -p lib/models lib/screens lib/widgets lib/services lib/utils assets/images
# Create the Car model
cat <<EOL > lib/models/car.dart
class Car {
  final String id;
  final String brand;
  final String model;
  final double price;
  final String imageUrl;
  final String description;
  final bool isAvailable;

  Car({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isAvailable = true,
  });
}
EOL

# Create Car Inventory Screen
cat <<EOL > lib/screens/car_inventory_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';

class CarInventoryScreen extends StatelessWidget {
  final List<Car> cars = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Showroom Inventory'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (ctx, index) {
          final car = cars[index];
          return Card(
            child: ListTile(
              leading: Image.asset(car.imageUrl, width: 100, height: 100),
              title: Text('\\${car.brand} \\${car.model}'),
              subtitle: Text('Price: \$\\${car.price}'),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/car-detail',
                  arguments: car,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
EOL

cat <<EOL > lib/screens/car_inventory_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';

class CarInventoryScreen extends StatelessWidget {
  final List<Car> cars = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Showroom Inventory'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (ctx, index) {
          final car = cars[index];
          return Card(
            child: ListTile(
              leading: Image.asset(car.imageUrl, width: 100, height: 100),
              title: Text('\\${car.brand} \\${car.model}'),
              subtitle: Text('Price: \$\\${car.price}'),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/car-detail',
                  arguments: car,
                );
              },
            ),
          );
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

# Create main.dart
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/car_inventory_screen.dart';
import 'screens/car_detail_screen.dart';
import 'models/car.dart';

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
      routes: {
        '/car-detail': (ctx) => CarDetailScreen(ModalRoute.of(ctx)!.settings.arguments as Car),
      },
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
# Print completion message
echo "Car dealer showroom system module has been generated successfully!"
#!/bin/bash
# Navigate to the Flutter project directory
cd aenzbi-app-flutter || { echo "Directory aenzbi-app-flutter not found!"; exit 1; }
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Create necessary directories
mkdir -p lib/models lib/screens lib/widgets lib/services lib/utils assets/images
# Create the Car model
cat <<EOL > lib/models/car.dart
class Car {
  final String id;
  final String brand;
  final String model;
  final double price;
  final String imageUrl;
  final String description;
  final bool isAvailable;

  Car({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isAvailable = true,
  });
}
EOL

# Create Car Service for fetching data
cat <<EOL > lib/services/car_service.dart
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
EOL

# Create Car Inventory Screen
cat <<EOL > lib/screens/car_inventory_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';
import '../services/car_service.dart';
import '../widgets/car_item.dart';

class CarInventoryScreen extends StatelessWidget {
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
# Print completion message
echo "Car dealer showroom system module has been generated successfully!"
ls -la
cd lib
ls -la
cd modules
ls -la
cd
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Navigate to the Flutter project directory
cd aenzbi-app-flutter || { echo "Directory aenzbi-app-flutter not found!"; exit 1; }
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Ensure Flutter is set up correctly
flutter pub get
# Create necessary directories if they don't exist
mkdir -p lib/models lib/screens lib/widgets lib/services lib/utils assets/images
# Create the Car model
cat <<EOL > lib/models/car.dart
class Car {
  final String id;
  final String brand;
  final String model;
  final double price;
  final String imageUrl;
  final String description;
  final bool isAvailable;

  Car({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isAvailable = true,
  });
}
EOL

# Create Car Service for fetching data
cat <<EOL > lib/services/car_service.dart
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
EOL

# Create Car Inventory Screen
cat <<EOL > lib/screens/car_inventory_screen.dart
import 'package:flutter/material.dart';
import '../models/car.dart';
import '../services/car_service.dart';
import '../widgets/car_item.dart';

class CarInventoryScreen extends StatelessWidget {
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
