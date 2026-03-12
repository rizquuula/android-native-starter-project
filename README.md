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
