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
git add .
git commit -m "update"
git push origin main
flutter run
gcloud config set project aenzbi-app-flutter
gcloud config set project aesmp-24
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Create Flutter project
flutter create "$PROJECT_NAME"
# Navigate to project directory
cd "$PROJECT_NAME" || { echo "Failed to navigate to $PROJECT_NAME"; exit 1; }
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
# Create pubspec.yaml content with all platforms
cat <<EOF > pubspec.yaml
name: aenzbi_app_flutter
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

# Get dependencies
flutter pub get
# Build the project using Gemini
echo "Building the project with Gemini..."
gemini build --release
# Optionally, run the app to check if everything is working fine
# echo "Running the application..."
# flutter run
echo "Project structure for $PROJECT_NAME created successfully."
echo "Build process completed successfully."
ls -la
flutter run
flutter run --debug
flutter run --force
gcloud config set project aesmp-24
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aesmp-24
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aesmp-24
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="$PROJECT_NAME"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aesmp-24
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-24"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aesmp-24
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbiAppFlutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aesmp-24
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbiappflutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aenzbi-app-flutter
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aenzbi-app-flutter
cd ..
ls -la
cd ..
cd /home/itsupport
cd ..
flutter run
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
cd itsupport
log "Creating Flutter project: $PROJECT_NAME"
# Create modules directory
log "Creating modules directory"
mkdir -p lib/modules || error_exit "Failed to create modules directory"
# Create main.dart file
log "Creating main.dart file"
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
for module in "${modules[@]}"; do     log "Creating module: $module";     mkdir -p "lib/modules/$module" || error_exit "Failed to create module directory: $module";     echo "// ${module^} Screen" > "lib/modules/$module/${module}_screen.dart" || error_exit "Failed to create screen file for $module"; done
# Create pubspec.yaml content with all platforms
log "Creating pubspec.yaml"
cat <<EOF > pubspec.yaml
name: aenzbi_app_flutter
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

# Get dependencies
log "Getting dependencies..."
flutter pub get || error_exit "Failed to get dependencies"
gcloud config set project aenzbi-app-flutter
cd ..
#!/bin/bash
# Define the path to the home directory
HOME_DIR="$HOME"
PROJECT_NAME="aenzbi_app_flutter"
# Define the path to the pubspec.yaml file
PUBSPEC_PATH="$HOME_DIR/$PROJECT_NAME/pubspec.yaml"
# Create the pubspec.yaml file
echo "Creating pubspec.yaml in $PUBSPEC_PATH..."
cat <<EOF > "$PUBSPEC_PATH"
name: $PROJECT_NAME
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

echo "pubspec.yaml created successfully at $PUBSPEC_PATH."
ls -la
flutter run
git config --global --add safe.directory /google/flutter
flutter run
#!/bin/bash
# Define the path to the home directory
HOME_DIR="$HOME"
PROJECT_NAME="aenzbi_app_flutter"
# Define the path to the pubspec.yaml file
PUBSPEC_PATH="$HOME_DIR/$PROJECT_NAME/pubspec.yaml"
# Create the pubspec.yaml file
echo "Creating pubspec.yaml in $PUBSPEC_PATH..."
cat <<EOF > "$PUBSPEC_PATH"
name: $PROJECT_NAME
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

echo "pubspec.yaml created successfully at $PUBSPEC_PATH."
flutter run
ls -la
cd ..
flutter run
#!/bin/bash
# Define the path to the home directory
HOME_DIR="$HOME"
PROJECT_NAME="aenzbi_app_flutter"
# Define the path to the pubspec.yaml file
PUBSPEC_PATH="$HOME_DIR/$PROJECT_NAME/pubspec.yaml"
# Create the pubspec.yaml file
echo "Creating pubspec.yaml in $PUBSPEC_PATH..."
cat <<EOF > "$PUBSPEC_PATH"
name: $PROJECT_NAME
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

echo "pubspec.yaml created successfully at $PUBSPEC_PATH."
flutter run
cd ..
flutter run
gcloud config set project aenzbi-app-flutter
cd ..
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aenzbi-app-flutter
ls -la
#!/bin/bash
# Define project name
PROJECT_NAME="aenzbi-app-flutter"
# Function to log messages
log() {     echo "[INFO] $1"; }
# Function to handle errors
error_exit() {     echo "[ERROR] $1";     exit 1; }
# Create Flutter project
log "Creating Flutter project: $PROJECT_NAME"
flutter create "$PROJECT_NAME" || error_exit "Failed to create Flutter project"
gcloud config set project aenzbi-app-flutter
cd ..
#!/bin/bash
# Define the project directory name
PROJECT_NAME="aenzbi-app-flutter"
# Define the path to the pubspec.yaml file
PUBSPEC_PATH="$HOME/$PROJECT_NAME/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$HOME/$PROJECT_NAME"
# Create the pubspec.yaml file
echo "Creating pubspec.yaml in $PUBSPEC_PATH..."
cat <<EOF > "$PUBSPEC_PATH"
name: $PROJECT_NAME
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

echo "pubspec.yaml created successfully at $PUBSPEC_PATH."
flutter run
cd
#!/bin/bash
# Define the project directory name
PROJECT_NAME="aenzbi-app-flutter"
# Define the path to the pubspec.yaml file
PUBSPEC_PATH="$HOME/$PROJECT_NAME/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$HOME/$PROJECT_NAME"
# Create the pubspec.yaml file
echo "Creating pubspec.yaml in $PUBSPEC_PATH..."
cat <<EOF > "$PUBSPEC_PATH"
name: $PROJECT_NAME
description: Aenzbi Business Application
publish_to: 'none' # Remove this line if you intend to publish
version: 1.0.0+1

environment:
  sdk: '>=2.12.0 <3.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  gemini: ^1.0.0 # Add the Gemini package for building
  # Add other dependencies here

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/ # Add your asset path here

# Add platform configurations
flutter:
  web:
    plugin:
      platforms:
        web:
          pluginClass: AenzbiAppWeb
          fileName: aenzbi_app_web.dart
  android:
    plugin:
      platforms:
        android:
          pluginClass: AenzbiAppAndroid
          fileName: aenzbi_app_android.dart
  ios:
    plugin:
      platforms:
        ios:
          pluginClass: AenzbiAppIOS
          fileName: aenzbi_app_ios.dart
  linux:
    plugin:
      platforms:
        linux:
          pluginClass: AenzbiAppLinux
          fileName: aenzbi_app_linux.dart
  windows:
    plugin:
      platforms:
        windows:
          pluginClass: AenzbiAppWindows
          fileName: aenzbi_app_windows.dart
EOF

echo "pubspec.yaml created successfully at $PUBSPEC_PATH."
flutter run
gcloud config set project aenzbi-app-flutter
