ios:
  bundle_identifier: com.aenzbi.app
  deployment_target: '14.0'

web:
  favicon: assets/images/favicon.png

linux:
  description: Aenzbi app for Linux
  version: 1.0.0

windows:
  description: Aenzbi app for Windows
  version: 1.0.0

macos:
  description: Aenzbi app for macOS
  version: 1.0.0
EOL

echo "pubspec.yaml has been created/updated successfully."
#!/bin/bash
# Define the project directory and pubspec.yaml path
PROJECT_DIR="$HOME/aenzbi-app-flutter"
PUBSPEC_FILE="$PROJECT_DIR/pubspec.yaml"
# Function to validate YAML
validate_yaml() {     echo "Validating $PUBSPEC_FILE..."
    if ! yamllint "$PUBSPEC_FILE"; then         echo "YAML validation failed. Please check the output above.";         return 1;     fi;     echo "YAML validation passed."; }
# Function to fix common issues in pubspec.yaml
fix_yaml() {     echo "Fixing common issues in $PUBSPEC_FILE..."
    sed -i.bak 's/deprecated_key/new_key/g' "$PUBSPEC_FILE"  # Example for replacing a key     echo "Common issues fixed. A backup of the original file is saved as pubspec.yaml.bak."; }
# Function to display suggestions (pseudo-code)
display_suggestions() {     echo "Here are some suggestions for improving your pubspec.yaml:";     echo "- Ensure all dependencies are up to date.";     echo "- Use consistent formatting for keys and values.";     echo "- Remove any unused dependencies."; }
# Main script execution
validate_yaml
if [ $? -eq 0 ]; then     fix_yaml;     display_suggestions;     echo "Finished updating $PUBSPEC_FILE."; else     echo "Please fix the issues in $PUBSPEC_FILE before proceeding."; fi
flutter build web
flutter run
#!/bin/bash
# Define the project directory
PROJECT_DIR="$HOME/aenzbi-app-flutter"
PUBSPEC_FILE="$PROJECT_DIR/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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
#!/bin/bash
# Define the project directory
PROJECT_DIR="$HOME/itsupport"
PUBSPEC_FILE="$PROJECT_DIR/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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
#!/bin/bash
# Define the project directory
PROJECT_DIR="home/itsupport"
PUBSPEC_FILE="$PROJECT_DIR/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="$PROJECT_DIR/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="home/itsupport/pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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
cd
#!/bin/bash
# Define the project directory
PROJECT_DIR="aenzbi-app-flutter"
PUBSPEC_FILE="pubspec.yaml"
# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
# Create pubspec.yaml
cat <<EOL > "$PUBSPEC_FILE"
name: aenzbi-app-flutter
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

# web:
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

# web:
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
