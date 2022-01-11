# Envify - Your Secret Vault in Flutter

![Envify - Your Secret Vault in Flutter](https://miro.medium.com/max/2708/1*-ESIIttVCaQzKe8tJGk8AQ.png)

As a **Flutter Developer,** there comes a time when you need to specify some confidential information in your source code such as API Keys, File Paths, URLs, Client-Side Secret Key etc, so the question arises that how would you:

✔️ Keep this data confidential.

💉 Integrate it without disclosing it inside the source code.

🛡️ Protect it if a hacker dismantles the code.

To get into more details, [read the medium article](https://levelup.gitconnected.com/envify-your-secret-vault-in-flutter-808bbffb1af9).

## Project Structure

```dart
envify_demo
├─ lib
│  ├─ config 
│  │  └─ env.dart // The Confidential Information.
│  │  └─ env.g.dart // The Generated File.
│  ├─ page
│  │  └─ envify_demo.dart // The Demo Page.
│  ├─ main.dart
├─ pubspec.lock
├─ pubspec.yaml
├─ README.md
├─ .env // The Environment File.
```

## Getting Started

1. Add the [envify](https://pub.dev/packages/envify) package in the `pubspec.yaml` file.

    ```yaml
    dependencies:
        flutter:
        sdk: flutter
        # A better way to handle environment variables using `.env` file.
        envify: ^2.0.2

    dev_dependencies:
        
        # A build system for Dart code generation and modular compilation.
        build_runner: ^2.1.5
    
        # A code generator for envify.
        envify_generator: ^2.0.2
    ```

2. Add all the files related to `envify` in the `.gitignore` file.

    ```gitignore
    # Some files to ignore.....

    # Envify related 
    .env
    env.dart
    env.g.dart
    ```

3. Outside the `lib` folder, create an `Environment` file.

    ```env
    API_KEY = 'PWEP198104102HEWFUQ'
    SITE_KEY = '91310!@31rwd2PZECAA'
    CLIENT_SECRET = 'XXXAd0q39e20q'
    CLIENT_ID = 'John Doe'
    ```

4. Under the `config` folder, create an `env.dart` file

    ```dart
    import 'package:envify/envify.dart';
    part 'env.g.dart';

    @Envify(name: 'Secret')
    abstract class Secret {
        /// Holds the API_KEY.
        static const api_key = _Secret.api_key;

        /// Holds the SITE_KEY.
        static const site_key = _Secret.site_key;

        /// Holds the CLIENT_SECRET.
        static const client_secret = _Secret.client_secret;

        /// Holds the CLIENT_ID.
        static const client_id = _Secret.client_id;
    }
    ```

5. Generate the `env.g.dart`  using the below `command` from the terminal.

    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

## FINAL RESULT

![Demonstration of App Using Envify on Windows.](https://miro.medium.com/max/2000/1*rbhC3YW7oTIiY5TWA-hCgQ.png)

## TOOLS & LANGUAGE

- [Microsoft Visual Studio Code](https://code.visualstudio.com/download)
- [Flutter](https://flutter.dev/)
