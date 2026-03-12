# Android Native Hello World

A minimal Android starter project with Kotlin and Jetpack Compose.

[![Android](https://img.shields.io/badge/Platform-Android-green.svg)](https://www.android.com/)
[![Kotlin](https://img.shields.io/badge/Kotlin-2.0-purple.svg)](https://kotlinlang.org/)
[![Compose](https://img.shields.io/badge/Compose-1.5-blue.svg)](https://developer.android.com/jetpack/compose)
[![API](https://img.shields.io/badge/API-21%2B-brightgreen.svg)](https://android-arsenal.com/api?level=21)

## Features

- ✅ **Jetpack Compose** - Modern declarative UI
- ✅ **Material3** - Latest Material Design
- ✅ **Kotlin** - 100% Kotlin codebase
- ✅ **Minimal setup** - Clean, no bloat
- ✅ **Makefile** - Easy CLI commands

## Requirements

- Android Studio Hedgehog (2023.1.1) or newer
- JDK 17
- Android SDK 34

## Setup

### Option 1: Android Studio (Recommended)

1. **Clone the repository**
   ```bash
   git clone https://github.com/rizquuula/android-native-starter-project.git
   cd android-native-starter-project
   ```

2. **Open in Android Studio**
   - File → Open → Select project directory
   - Wait for Gradle sync to complete

3. **Run**
   - Connect device or start emulator
   - Click Run (Shift+F10)

### Option 2: Command Line

1. **Install prerequisites**
   ```bash
   # Install Android SDK (if not using Android Studio)
   # Download from: https://developer.android.com/studio#command-tools
   ```

2. **Configure SDK path**
   Create `local.properties` in project root:
   ```
   sdk.dir=/path/to/Android/Sdk
   ```
   
   On Windows:
   ```
   sdk.dir=C\:\\Users\\YourName\\AppData\\Local\\Android\\Sdk
   ```

3. **Set JAVA_HOME** (if needed)
   ```bash
   export JAVA_HOME="D:/AndroidStudio/Studio/jbr"
   export PATH="$JAVA_HOME/bin:$PATH"
   ```

4. **Build**
   ```bash
   make debug
   ```

### Troubleshooting

- **Gradle download failed**: Server may be temporarily unavailable. Retry or download manually from [gradle.org](https://gradle.org/)
- **SDK not found**: Ensure `local.properties` has correct SDK path
- **Java not found**: Set `JAVA_HOME` to Android Studio bundled JDK or standalone JDK 17+

## Quick Start

### Build

```bash
make debug
```

### Install

```bash
make install
```

### Run

```bash
make run
```

## Makefile Commands

| Command | Description |
|---------|-------------|
| `make debug` | Build debug APK |
| `make release` | Build release APK |
| `make clean` | Clean build artifacts |
| `make install` | Install on device |
| `make run` | Launch app |
| `make lint` | Run lint checks |
| `make test` | Run tests |

## Project Structure

```
├── app/
│   ├── src/main/
│   │   ├── java/com/example/helloworld/
│   │   │   ├── MainActivity.kt
│   │   │   └── ui/theme/
│   │   └── res/
│   └── build.gradle.kts
├── build.gradle.kts
├── settings.gradle.kts
└── Makefile
```

## Tech Stack

- **Language:** Kotlin 1.9.20
- **UI:** Jetpack Compose 1.5
- **Min SDK:** API 21 (Android 5.0)
- **Target SDK:** API 34 (Android 14)
- **Build System:** Gradle 8.2

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Made with ❤️ by [M Razif Rizqullah](https://github.com/rizquuula)
