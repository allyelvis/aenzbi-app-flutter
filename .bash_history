            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AccountingScreen()));
              },
              child: Text('Go to Accounting'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EcommerceScreen()));
              },
              child: Text('Go to E-commerce'),
            ),
          ],
        ),
      ),
    );
  }
}
EOL

# Create Main entry point
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        title: 'Aenzbi App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
      ),
    );
  }
}
EOL

# Initialize Git repository
git init
git remote add origin $GITHUB_REPO_URL
# Add all changes to staging
git add .
# Commit the changes
git commit -m "Initial commit for aenzbi_app with basic structure"
# Push to GitHub
git push -u origin master
echo "Flutter project '$PROJECT_NAME' has been created and pushed to GitHub."
cd
cd aenzbi_app
git add .
git commit -m "add project"
git push origin main
#!/bin/bash
# Variables
PROJECT_DIR="/aenzbi-app-flutter"  # Update with the actual path to your Flutter project
GITHUB_REPO="https://github.com/allyelvis/aenzbi-app-flutter.git"
# Navigate to the project directory
cd "$PROJECT_DIR" || { echo "Directory not found: $PROJECT_DIR"; exit 1; }
git config --global user.email "allyelvis6569@gmail.com"
git config --global user.name "allyelvis"
#!/bin/bash
# Variables
PROJECT_DIR="/aenzbi-app-flutter"  # Update with the actual path to your Flutter project
GITHUB_REPO="https://github.com/allyelvis/aenzbi-app-flutter.git"
# Navigate to the project directory
cd "$PROJECT_DIR" || { echo "Directory not found: $PROJECT_DIR"; exit 1; }
git init
git add .
git commit -m "init"
git push origin main
echo "# aenzbi-app-flutter" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/allyelvis/aenzbi-app-flutter.git
git push -u origin main
ls -la
cd aenzbi_app
ls -la
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define variables
PROJECT_NAME="aenzbi_business_app"
PROJECT_DIR="$HOME/$PROJECT_NAME"
GITHUB_REPO="https://github.com/AllyElvis/$PROJECT_NAME.git"
# Step 1: Create Flutter Project
echo "Creating Flutter project..."
flutter create "$PROJECT_NAME" || { echo "Failed to create Flutter project."; exit 1; }
# Step 2: Navigate to Project Directory
cd "$PROJECT_DIR" || { echo "Directory not found: $PROJECT_DIR"; exit 1; }
# Step 3: Add Dependencies
echo "Adding dependencies to pubspec.yaml..."
cat >> pubspec.yaml <<EOL

dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  http: ^0.13.3
  flutter_bloc: ^8.0.0
  get: ^4.6.1
  dio: ^5.0.0
  firebase_core: ^2.0.0
  cloud_firestore: ^4.0.0
  image_picker: ^0.8.4
  google_fonts: ^3.0.1
EOL

# Step 4: Create Directory Structure
echo "Creating directory structure..."
mkdir -p lib/{models,services,screens,widgets,utils}
# Step 5: Create Main Entry Point
cat > lib/main.dart <<EOL
import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import your screens

void main() {
  runApp(AenzbiBusinessApp());
}

class AenzbiBusinessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi Business App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(), // Set the initial screen
    );
  }
}
EOL

# Step 6: Create Home Screen
cat > lib/screens/home_screen.dart <<EOL
import 'package:flutter/material.dart';
import 'pos_screen.dart';
import 'ecommerce_screen.dart';
import 'accounting_screen.dart';
import 'ai_tools_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi Business App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildCard(context, 'Point of Sale', PosScreen()),
          _buildCard(context, 'eCommerce', EcommerceScreen()),
          _buildCard(context, 'Accounting', AccountingScreen()),
          _buildCard(context, 'AI Tools', AiToolsScreen()),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, Widget screen) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Center(
          child: Text(title, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
EOL

# Step 7: Create Placeholder Screens
for screen in pos_screen ecommerce_screen accounting_screen ai_tools_screen; do
  cat > "lib/screens/${screen}.dart" <<EOLimport 'package:flutter/material.dart';

class ${screen^} extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${screen.replace("_", " ").toUpperCase()}'),
      ),
      body: Center(
        child: Text('Welcome to the ${screen.replace("_", " ")} module!'),
      ),
    );
  }
}
EOL
 done
for screen in pos_screen ecommerce_screen accounting_screen ai_tools_screen; do
  cat > "lib/screens/${screen}.dart" <<EOLimport 'package:flutter/material.dart';

class ${screen^} extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${screen.replace("_", " ").toUpperCase()}'),
      ),
      body: Center(
        child: Text('Welcome to the ${screen.replace("_", " ")} module!'),
      ),
    );
  }
}
EOL
 done
for screen in pos_screen ecommerce_screen accounting_screen ai_tools_screen; do
  cat > "lib/screens/${screen}.dart" <<EOLimport 'package:flutter/material.dart';

class ${screen^} extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${screen.replace("_", " ").toUpperCase()}'),
      ),
      body: Center(
        child: Text('Welcome to the ${screen.replace("_", " ")} module!'),
      ),
    );
  }
}
EOL
 done
for screen in pos_screen ecommerce_screen accounting_screen ai_tools_screen; do
  cat > "lib/screens/${screen}.dart" <<EOLimport 'package:flutter/material.dart';

class ${screen^} extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${screen.replace("_", " ").toUpperCase()}'),
      ),
      body: Center(
        child: Text('Welcome to the ${screen.replace("_", " ")} module!'),
      ),
    );
  }
}
EOL
 done
for screen in pos_screen ecommerce_screen accounting_screen ai_tools_screen; do
  cat > "lib/screens/${screen}.dart" <<EOLimport 'package:flutter/material.dart';

class ${screen^} extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${screen.replace("_", " ").toUpperCase()}'),
      ),
      body: Center(
        child: Text('Welcome to the ${screen.replace("_", " ")} module!'),
      ),
    );
  }
}
EOL
 done
# Step 8: Initialize Git and Push to GitHub
echo "Initializing Git repository..."
git init
git add .
git commit -m "Initial commit for Aenzbi Business App"
# Add remote repository
if ! git remote -v | grep -q "origin"; then     git remote add origin "$GITHUB_REPO";     echo "Added remote repository: $GITHUB_REPO"; else     echo "Remote 'origin' already exists."; fi
# Step 9: Push to GitHub
git push -u origin main || { echo "Failed to push to GitHub. Check your remote URL and branch name."; exit 1; }
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Variables
PROJECT_NAME="aenzbi-app-flutter"
DEPENDENCIES=(     "provider"     "http"     "shared_preferences"     "intl"     "flutter_bloc"     "cupertino_icons"     "barcode_scan"     "flutter_stripe"     "firebase_auth"     "cloud_firestore"     "flutter_local_notifications"     "image_picker"     "file_picker"     "charts_flutter" )
# Step 1: Create Flutter Project
flutter create $PROJECT_NAME
# Step 2: Navigate into Project Directory
cd $PROJECT_NAME
# Step 3: Update pubspec.yaml with dependencies
echo "Updating pubspec.yaml with dependencies..."
for DEPENDENCY in "${DEPENDENCIES[@]}"; do     echo "- $DEPENDENCY" >> pubspec.yaml; done
# Step 4: Create Directory Structure
echo "Creating directory structure..."
mkdir -p lib/models lib/screens lib/services lib/blocs lib/widgets lib/utils
# Step 5: Create Basic Model Files
cat <<EOL > lib/models/product.dart
class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.quantity,
  });
}
EOL

cat <<EOL > lib/models/invoice.dart
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
EOL

cat <<EOL > lib/models/user.dart
class User {
  final String uid;
  final String email;

  User({required this.uid, required this.email});
}
EOL

# Step 6: Create Basic Service Files
cat <<EOL > lib/services/pos_service.dart
import 'package:http/http.dart' as http;

class PosService {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://your-api-url/products'));
    if (response.statusCode == 200) {
      // Parse and return products
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> createInvoice(Invoice invoice) async {
    final response = await http.post(
      Uri.parse('https://your-api-url/invoices'),
      headers: {'Content-Type': 'application/json'},
      body: invoice.toJson(), // Convert invoice to JSON
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create invoice');
    }
  }
}
EOL

cat <<EOL > lib/services/auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user != null ? User(uid: user.uid, email: user.email!) : null;
    } catch (e) {
      throw Exception('Failed to sign in: \$e');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
EOL

# Step 7: Create Main Application File
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi POS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
EOL

# Step 8: Add Basic Home Screen
cat <<EOL > lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi POS'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Products'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductListScreen()),
            );
          },
        ),
      ),
    );
  }
}
EOL

# Step 9: Create Product List Screen
cat <<EOL > lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../services/pos_service.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final PosService posService = PosService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: posService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: \$${products[index].price}'),
                onTap: () {
                  // Navigate to invoice screen
                },
              );
            },
          );
        },
      ),
    );
  }
}
EOL

cat <<EOL > lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../services/pos_service.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final PosService posService = PosService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: posService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: \$${products[index].price}'),
                onTap: () {
                  // Navigate to invoice screen
                },
              );
            },
          );
        },
      ),
    );
  }
}
EOL

# Step 10: Install Dependencies
echo "Installing dependencies..."
flutter pub get
echo "Aenzbi Flutter POS project setup completed successfully!"
#!/bin/bash
# Variables
PROJECT_NAME="aenzbi-app-flutter"
DEPENDENCIES=(     "provider"     "http"     "shared_preferences"     "intl"     "flutter_bloc"     "cupertino_icons"     "barcode_scan"     "flutter_stripe"     "firebase_auth"     "cloud_firestore"     "flutter_local_notifications"     "image_picker"     "file_picker"     "charts_flutter" )
# Step 1: Create Flutter Project
flutter create $PROJECT_NAME
# Step 2: Navigate into Project Directory
cd $PROJECT_NAME
# Step 3: Update pubspec.yaml with dependencies
echo "Updating pubspec.yaml with dependencies..."
for DEPENDENCY in "${DEPENDENCIES[@]}"; do     echo "- $DEPENDENCY" >> pubspec.yaml; done
# Step 4: Create Directory Structure
echo "Creating directory structure..."
mkdir -p lib/models lib/screens lib/services lib/blocs lib/widgets lib/utils
# Step 5: Create Basic Model Files
cat <<EOL > lib/models/product.dart
class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.quantity,
  });
}
EOL

cat <<EOL > lib/models/invoice.dart
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
EOL

cat <<EOL > lib/models/user.dart
class User {
  final String uid;
  final String email;

  User({required this.uid, required this.email});
}
EOL

# Step 6: Create Basic Service Files
cat <<EOL > lib/services/pos_service.dart
import 'package:http/http.dart' as http;

class PosService {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://your-api-url/products'));
    if (response.statusCode == 200) {
      // Parse and return products
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> createInvoice(Invoice invoice) async {
    final response = await http.post(
      Uri.parse('https://your-api-url/invoices'),
      headers: {'Content-Type': 'application/json'},
      body: invoice.toJson(), // Convert invoice to JSON
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create invoice');
    }
  }
}
EOL

cat <<EOL > lib/services/auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user != null ? User(uid: user.uid, email: user.email!) : null;
    } catch (e) {
      throw Exception('Failed to sign in: \$e');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
EOL

# Step 7: Create Main Application File
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi POS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
EOL

# Step 8: Add Basic Home Screen
cat <<EOL > lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi POS'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Products'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductListScreen()),
            );
          },
        ),
      ),
    );
  }
}
EOL

# Step 9: Create Product List Screen
cat <<EOL > lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../services/pos_service.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final PosService posService = PosService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: posService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: \$${products[index].price}'),
                onTap: () {
                  // Navigate to invoice screen
                },
              );
            },
          );
        },
      ),
    );
  }
}
EOL

cat <<EOL > lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../services/pos_service.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final PosService posService = PosService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: posService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: \$${products[index].price}'),
                onTap: () {
                  // Navigate to invoice screen
                },
              );
            },
          );
        },
      ),
    );
  }
}
EOL

# Step 10: Install Dependencies
echo "Installing dependencies..."
flutter pub get
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Variables
PROJECT_NAME="aenzbi-app-flutter"
DB_DEPENDENCIES=(     "sqflite"     "path_provider" )
# Step 1: Navigate into Project Directory
cd $PROJECT_NAME || { echo "Project directory not found!"; exit 1; }
gcloud config set project aenzbi-app-flutter
ls -la
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Variables
PROJECT_NAME="aenzbi-app-flutter"
DEPENDENCIES=(     "provider"     "http"     "shared_preferences"     "intl"     "flutter_bloc"     "cupertino_icons"     "barcode_scan"     "flutter_stripe"     "firebase_auth"     "cloud_firestore"     "flutter_local_notifications"     "image_picker"     "file_picker"     "charts_flutter" )
# Step 1: Create Flutter Project
flutter create $PROJECT_NAME
# Step 2: Navigate into Project Directory
cd $PROJECT_NAME
# Step 3: Update pubspec.yaml with dependencies
echo "Updating pubspec.yaml with dependencies..."
for DEPENDENCY in "${DEPENDENCIES[@]}"; do     echo "- $DEPENDENCY" >> pubspec.yaml; done
# Step 4: Create Directory Structure
echo "Creating directory structure..."
mkdir -p lib/models lib/screens lib/services lib/blocs lib/widgets lib/utils
# Step 5: Create Basic Model Files
cat <<EOL > lib/models/product.dart
class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.quantity,
  });
}
EOL

cat <<EOL > lib/models/invoice.dart
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
EOL

cat <<EOL > lib/models/user.dart
class User {
  final String uid;
  final String email;

  User({required this.uid, required this.email});
}
EOL

# Step 6: Create Basic Service Files
cat <<EOL > lib/services/pos_service.dart
import 'package:http/http.dart' as http;

class PosService {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://your-api-url/products'));
    if (response.statusCode == 200) {
      // Parse and return products
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> createInvoice(Invoice invoice) async {
    final response = await http.post(
      Uri.parse('https://your-api-url/invoices'),
      headers: {'Content-Type': 'application/json'},
      body: invoice.toJson(), // Convert invoice to JSON
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create invoice');
    }
  }
}
EOL

cat <<EOL > lib/services/auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user != null ? User(uid: user.uid, email: user.email!) : null;
    } catch (e) {
      throw Exception('Failed to sign in: \$e');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
EOL

# Step 7: Create Main Application File
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi POS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
EOL

# Step 8: Add Basic Home Screen
cat <<EOL > lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi POS'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Products'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductListScreen()),
            );
          },
        ),
      ),
    );
  }
}
EOL

# Step 9: Create Product List Screen
cat <<EOL > lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../services/pos_service.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final PosService posService = PosService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: posService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: \$${products[index].price}'),
                onTap: () {
                  // Navigate to invoice screen
                },
              );
            },
          );
        },
      ),
    );
  }
}
EOL

cat <<EOL > lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import '../services/pos_service.dart';
import '../models/product.dart';

class ProductListScreen extends StatelessWidget {
  final PosService posService = PosService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: posService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: \$${products[index].price}'),
                onTap: () {
                  // Navigate to invoice screen
                },
              );
            },
          );
        },
      ),
    );
  }
}
EOL

# Step 10: Install Dependencies
echo "Installing dependencies..."
flutter pub get
echo "Aenzbi Flutter POS project setup completed successfully!"
