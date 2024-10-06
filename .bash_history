#  server:
#    port: 8080
#
# android:
#   compileSdkVersion: 31
#   targetSdkVersion: 31
#
# ios:
#   deploymentTarget: '12.0'
#
# linux:
#   extraArchitectures: []
#
# macos:
#   minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
flutter doctor
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.10
  provider: ^6.0.0
  http: ^0.14.0
  firebase_core: ^2.14.0
  firebase_auth: ^4.8.0
  cloud_firestore: ^4.9.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2
  build_web_compilers: ^3.4.0

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.10
  provider: ^6.0.0
  http: ^0.14.0
  firebase_core: ^2.14.0
  firebase_auth: ^4.8.0
  cloud_firestore: ^4.9.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2
  build_web:^3.4.0

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.10
  provider: ^6.0.0
  http: ^0.14.0
  firebase_core: ^2.14.0
  firebase_auth: ^4.8.0
  cloud_firestore: ^4.9.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.10
  provider: ^6.0.0
  
  firebase_core: ^2.14.0
  firebase_auth: ^4.8.0
  cloud_firestore: ^4.9.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  provider: ^6.0.0

  firebase_core: ^2.14.0
  firebase_auth: ^4.8.0
  cloud_firestore: ^4.9.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
flutter pub outdated
flutter run
gcloud config set project aenzbi-app-flutter
git add .
git commit -m"update pubspec"
git push origin main
#!/bin/bash
# Define project path
PROJECT_PATH="aenzbi-app-flutter"
ANDROID_PATH="$PROJECT_PATH/android/app"
# Check if project path exists
if [ ! -d "$PROJECT_PATH" ]; then   echo "Project directory $PROJECT_PATH does not exist.";   exit 1; fi
# Update build.gradle
echo "Updating build.gradle..."
BUILD_GRADLE="$ANDROID_PATH/build.gradle"
if [ -f "$BUILD_GRADLE" ]; then
  cp "$BUILD_GRADLE" "$BUILD_GRADLE.bak"
  sed -i.bak -E 's/(compileSdkVersion\s*).+/\1333/' "$BUILD_GRADLE";   sed -i.bak -E 's/(targetSdkVersion\s*).+/\1333/' "$BUILD_GRADLE"   echo "build.gradle updated successfully."; else   echo "build.gradle not found in $ANDROID_PATH.";   exit 1; fi
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define project path
PROJECT_PATH="aenzbi-app-flutter"
ANDROID_PATH="android"
# Check if project path exists
if [ ! -d "$PROJECT_PATH" ]; then   echo "Project directory $PROJECT_PATH does not exist."   fi
# Update build.gradle
echo "Updating build.gradle..."
BUILD_GRADLE="$ANDROID_PATH/build.gradle"
if [ -f "$BUILD_GRADLE" ]; then
  cp "$BUILD_GRADLE" "$BUILD_GRADLE.bak"
  sed -i.bak -E 's/(compileSdkVersion\s*).+/\1333/' "$BUILD_GRADLE";   sed -i.bak -E 's/(targetSdkVersion\s*).+/\1333/' "$BUILD_GRADLE"   echo "build.gradle updated successfully."; else   echo "build.gradle not found in $ANDROID_PATH."   fi
# Update AndroidManifest.xml
echo "Updating AndroidManifest.xml..."
MANIFEST_FILE="$ANDROID_PATH/src/main/AndroidManifest.xml"
cat <<EOL > "$MANIFEST_FILE"
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.aenzbi_app_flutter">

    <application
        android:name=".MainApplication"
        android:label="Aenzbi App Flutter"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|direction|uiMode|colorMode|windowLayout"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <meta-data
                android:name="flutterEmbedding"
                android:value="2" />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
    </application>

</manifest>
EOL

echo "AndroidManifest.xml updated successfully."
# Update MainActivity.kt
echo "Updating MainActivity.kt..."
MAIN_ACTIVITY_FILE="$ANDROID_PATH/src/main/kotlin/com/example/aenzbi_app_flutter/MainActivity.kt"
# Create the necessary directory if it doesn't exist
mkdir -p "$ANDROID_PATH/src/main/kotlin/com/example/aenzbi_app_flutter"
cat <<EOL > "$MAIN_ACTIVITY_FILE"
package com.example.aenzbi_app_flutter

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
}
EOL

echo "MainActivity.kt updated successfully."
# Run Flutter clean and pub get
echo "Running flutter clean and pub get..."
cd "$PROJECT_PATH" ||  flutter clean
flutter pub get
echo "Migration to Android embedding v2 completed successfully."
flutter run
gcloud config set project aenzbi-app-flutter
flutter doctor
flutter run
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  provider: ^6.0.0
  firebase_core: ^2.14.0
  firebase_auth: ^4.8.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  provider: ^6.0.0
  firebase_core: ^2.14.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi_app_flutter
description: A Flutter project for Aenzbi including multiple modules.

version: 1.0.0+1

environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.0
  provider: ^6.0.0
  flutter_localizations:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.2

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/fonts/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/CustomFont-Regular.ttf
        - asset: assets/fonts/CustomFont-Bold.ttf
          weight: 700

# Platforms support
# Uncomment the desired platforms you want to build for

web:
  server:
    port: 8080

android:
  compileSdkVersion: 33
  targetSdkVersion: 33

ios:
  deploymentTarget: '12.0'

linux:
  extraArchitectures: []

macos:
  minimumOSVersion: '10.14'

EOL

echo "pubspec.yaml created successfully at $PUBSPEC_FILE."
flutter run
gcloud config set project aenzbi-app-flutter
flutter clean
flutter pub get
flutter run
gcloud config set project aenzbi-app-flutter
flutter pub get
gcloud config set project aenzbi-app-flutter
flutter config --enable-linux-desktop
#!/bin/bash
# Define the project path
PROJECT_PATH="aenzbi-app-flutter"
LINUX_PATH="$PROJECT_PATH/linux"
# Create the linux directory structure if it doesn't exist
mkdir -p "$LINUX_PATH"
# Create CMakeLists.txt
cat <<EOL > "$LINUX_PATH/CMakeLists.txt"
cmake_minimum_required(VERSION 3.10)

project(aenzbi_app_flutter LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)

# Include the Flutter library
include(\${FLUTTER_ROOT}/scripts/cmake/Flutter.cmake)

# Create executable target
add_executable(aenzbi_app_flutter "flutter/generated_plugin_registrant.cc" "main.cc")
target_link_libraries(aenzbi_app_flutter flutter)
EOL

# Create main.cc
cat <<EOL > "$LINUX_PATH/main.cc"
#include "flutter/flutter_view_controller.h"
#include <flutter/method_channel.h>
#include <flutter/plugin_registry.h>

#include <iostream>

int main(int argc, char **argv) {
    FlutterViewController controller;
    controller.Run();
    return 0;
}
EOL

# Create flutter/generated_plugin_registrant.cc
cat <<EOL > "$LINUX_PATH/flutter/generated_plugin_registrant.cc"
#include "flutter/generated_plugin_registrant.h"

#include <flutter_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  // Register your plugins here
}
EOL

# Create the desktop entry file
cat <<EOL > "$LINUX_PATH/aenzbi_app_flutter.desktop"
[Desktop Entry]
Version=1.0
Type=Application
Name=Aenzbi App Flutter
Comment=A Flutter application for Aenzbi
Exec=./aenzbi_app_flutter
Icon=path/to/icon.png
Terminal=false
Categories=Development;
EOL

# Create the icon directory
mkdir -p "$LINUX_PATH/icons"
# You can add an icon image file in the icons directory, e.g. "icon.png"
echo "Linux desktop configuration created successfully at $LINUX_PATH."
restart
gcloud config set project aenzbi-app-flutter
#!/bin/bash
# Define the project path
PROJECT_PATH="aenzbi-app-flutter"
LINUX_PATH="$PROJECT_PATH/linux"
# Create the linux directory structure if it doesn't exist
mkdir -p "$LINUX_PATH"
# Create CMakeLists.txt
cat <<EOL > "$LINUX_PATH/CMakeLists.txt"
cmake_minimum_required(VERSION 3.10)

project(aenzbi_app_flutter LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)

# Include the Flutter library
include(\${FLUTTER_ROOT}/scripts/cmake/Flutter.cmake)

# Create executable target
add_executable(aenzbi_app_flutter "flutter/generated_plugin_registrant.cc" "main.cc")
target_link_libraries(aenzbi_app_flutter flutter)
EOL

# Create main.cc
cat <<EOL > "$LINUX_PATH/main.cc"
#include "flutter/flutter_view_controller.h"
#include <flutter/method_channel.h>
#include <flutter/plugin_registry.h>

#include <iostream>

int main(int argc, char **argv) {
    FlutterViewController controller;
    controller.Run();
    return 0;
}
EOL

# Create flutter/generated_plugin_registrant.cc
cat <<EOL > "$LINUX_PATH/flutter/generated_plugin_registrant.cc"
#include "flutter/generated_plugin_registrant.h"

#include <flutter_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  // Register your plugins here
}
EOL

# Create the desktop entry file
cat <<EOL > "$LINUX_PATH/aenzbi_app_flutter.desktop"
[Desktop Entry]
Version=1.0
Type=Application
Name=Aenzbi App Flutter
Comment=A Flutter application for Aenzbi
Exec=./aenzbi_app_flutter
Icon=path/to/icon.png
Terminal=false
Categories=Development;
EOL

# Create the icon directory
mkdir -p "$LINUX_PATH/icons"
# You can add an icon image file in the icons directory, e.g. "icon.png"
echo "Linux desktop configuration created successfully at $LINUX_PATH."
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
LINUX_DIR="$PROJECT_DIR/linux"
# Create the linux directory structure if it doesn't exist
mkdir -p "$LINUX_DIR"
# Create CMakeLists.txt
cat <<EOL > "$LINUX_DIR/CMakeLists.txt"
cmake_minimum_required(VERSION 3.10)

project(aenzbi_app_flutter LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)

# Include the Flutter library
include(\${FLUTTER_ROOT}/scripts/cmake/Flutter.cmake)

# Create executable target
add_executable(aenzbi_app_flutter "flutter/generated_plugin_registrant.cc" "main.cc")
target_link_libraries(aenzbi_app_flutter flutter)
EOL

# Create main.cc
cat <<EOL > "$LINUX_DIR/main.cc"
#include <flutter/flutter_view_controller.h>
#include <flutter/method_channel.h>
#include <flutter/plugin_registry.h>
#include <iostream>

int main(int argc, char **argv) {
    // Create the Flutter application window
    FlutterViewController controller;
    controller.Run();
    return 0;
}
EOL

# Create flutter/generated_plugin_registrant.cc
cat <<EOL > "$LINUX_DIR/flutter/generated_plugin_registrant.cc"
#include "flutter/generated_plugin_registrant.h"

// Add the includes for the plugins you want to use here
#include <flutter_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  // Register your plugins here
}
EOL

# Create the desktop entry file
cat <<EOL > "$LINUX_DIR/aenzbi_app_flutter.desktop"
[Desktop Entry]
Version=1.0
Type=Application
Name=Aenzbi App Flutter
Comment=A Flutter application for Aenzbi
Exec=./aenzbi_app_flutter
Icon=path/to/icon.png  # Change this to the actual path of your icon
Terminal=false
Categories=Development;
EOL

# Create the icons directory
mkdir -p "$LINUX_DIR/icons"
# Notify user of completion
echo "Linux project structure created successfully at $LINUX_DIR."
ls -la
cd linux
ls -la
cd flutter
ls -la
cd
flutter doctor
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Check if the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then   echo "Project directory '$PROJECT_DIR' does not exist.";   exit 1; fi
# Update pubspec.yaml to add Chrome dependency
cat <<EOL >> "$PUBSPEC_FILE"

dependencies:
  flutter_web_plugins: ^0.15.0  # Add this dependency for web support
  flutter_webview_plugin: ^0.14.0 # Chrome dependency for web view support
EOL

echo "Updated pubspec.yaml to include Chrome dependency."
# Install necessary Linux development tools
echo "Installing necessary Linux development tools..."
sudo apt update
flutter doctor
#!/bin/bash
# Define the project directory and pubspec.yaml path
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Check if the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then   echo "Project directory '$PROJECT_DIR' does not exist.";   exit 1; fi
# Function to update pubspec.yaml if the dependency is not already present
function add_dependency() {   local dependency="$1";   if ! grep -q "$dependency" "$PUBSPEC_FILE"; then     echo "$dependency" >> "$PUBSPEC_FILE";     echo "Added $dependency to $PUBSPEC_FILE.";   else     echo "$dependency is already in $PUBSPEC_FILE, skipping.";   fi; }
# Update pubspec.yaml to add Chrome dependency
echo "Updating pubspec.yaml to add Chrome dependencies..."
# Adding the dependencies if they are not already present
add_dependency "  flutter_web_plugins: ^0.15.0  # Add this dependency for web support"
add_dependency "  flutter_webview_plugin: ^0.14.0 # Chrome dependency for web view support"
# Install necessary Linux development tools
echo "Installing necessary Linux development tools..."
sudo apt update
flutter run
#!/bin/bash
# Define the project directory and pubspec.yaml path
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Check if the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then   echo "Project directory '$PROJECT_DIR' does not exist.";   exit 1; fi
# Function to update pubspec.yaml if the dependency is not already present
function add_dependency() {   local dependency="$1";   if ! grep -q "$dependency" "$PUBSPEC_FILE"; then     echo "$dependency" >> "$PUBSPEC_FILE";     echo "Added $dependency to $PUBSPEC_FILE.";   else     echo "$dependency is already in $PUBSPEC_FILE, skipping.";   fi; }
# Update pubspec.yaml to add Chrome dependency
echo "Updating pubspec.yaml to add Chrome dependencies..."
# Adding the dependencies if they are not already present
add_dependency "  flutter_web_plugins: ^0.15.0  # Add this dependency for web support"
add_dependency "  flutter_webview_plugin: ^0.14.0 # Chrome dependency for web view support"
# Remove duplicate keys in pubspec.yaml
echo "Removing duplicate keys from $PUBSPEC_FILE..."
# Use awk to filter out duplicate lines while preserving the order
awk '!seen[$0]++' "$PUBSPEC_FILE" > "$PUBSPEC_FILE.tmp" && mv "$PUBSPEC_FILE.tmp" "$PUBSPEC_FILE"
echo "Removed duplicate keys from $PUBSPEC_FILE."
# Install necessary Linux development tools
echo "Installing necessary Linux development tools..."
sudo apt update
flutter run
flutter build
flutter build apk
flutter build linux
flutter build bundle
flutter build web
flutter test
#!/bin/bash
# Define the project directory and pubspec.yaml path
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Check if the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then   echo "Project directory '$PROJECT_DIR' does not exist.";   exit 1; fi
# Create test and build directories
echo "Creating test and build directories..."
mkdir -p "$PROJECT_DIR/test"
mkdir -p "$PROJECT_DIR/build"
echo "Test and build directories created successfully."
# Function to update pubspec.yaml if the dependency is not already present
function add_dependency() {   local dependency="$1";   if ! grep -q "$dependency" "$PUBSPEC_FILE"; then     echo "$dependency" >> "$PUBSPEC_FILE";     echo "Added $dependency to $PUBSPEC_FILE.";   else     echo "$dependency is already in $PUBSPEC_FILE, skipping.";   fi; }
# Update pubspec.yaml to add Chrome dependency
echo "Updating pubspec.yaml to add Chrome dependencies..."
# Adding the dependencies if they are not already present
add_dependency "  flutter_web_plugins: ^0.15.0  # Add this dependency for web support"
add_dependency "  flutter_webview_plugin: ^0.14.0 # Chrome dependency for web view support"
# Remove duplicate keys in pubspec.yaml
echo "Removing duplicate keys from $PUBSPEC_FILE..."
# Use awk to filter out duplicate lines while preserving the order
awk '!seen[$0]++' "$PUBSPEC_FILE" > "$PUBSPEC_FILE.tmp" && mv "$PUBSPEC_FILE.tmp" "$PUBSPEC_FILE"
echo "Removed duplicate keys from $PUBSPEC_FILE."
# Install necessary Linux development tools
echo "Installing necessary Linux development tools..."
sudo apt update
flutter test
mkdir test
flutter test
flutter run
flutter doctor
exit
gcloud config set project aenzbi-app-flutter
