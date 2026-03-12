# Android Hello World Makefile
# Usage: make <target>

.PHONY: help build debug release clean install run lint test deps

# Gradle wrapper path
GRADLE = ./gradle-8.2/bin/gradle

# Default target
help:
	@echo "Android Hello World - Available Commands:"
	@echo ""
	@echo "  make debug      - Build debug APK (fast)"
	@echo "  make release    - Build release APK"
	@echo "  make build      - Full build with lint"
	@echo "  make clean      - Clean build artifacts"
	@echo "  make install    - Install debug APK on device"
	@echo "  make uninstall  - Uninstall app from device"
	@echo "  make run        - Launch the app"
	@echo "  make lint       - Run lint checks"
	@echo "  make test       - Run unit tests"
	@echo "  make deps       - Show project dependencies"
	@echo "  make apk        - Alias for debug"
	@echo ""

debug:
	@echo "Building debug APK..."
	$(GRADLE) assembleDebug
	@echo ""
	@echo "✓ Debug APK built successfully!"
	@echo "  Location: app/build/outputs/apk/debug/app-debug.apk"

release:
	@echo "Building release APK..."
	$(GRADLE) assembleRelease
	@echo ""
	@echo "✓ Release APK built successfully!"
	@echo "  Location: app/build/outputs/apk/release/app-release-unsigned.apk"

build:
	@echo "Running full build with lint..."
	$(GRADLE) build
	@echo ""
	@echo "✓ Build completed successfully!"

clean:
	@echo "Cleaning build artifacts..."
	$(GRADLE) clean
	@echo ""
	@echo "✓ Clean completed!"

install:
	@echo "Installing debug APK on connected device..."
	adb install -r app/build/outputs/apk/debug/app-debug.apk
	@echo ""
	@echo "✓ App installed!"

uninstall:
	@echo "Uninstalling app from device..."
	adb uninstall com.example.helloworld
	@echo ""
	@echo "✓ App uninstalled!"

run:
	@echo "Launching the app..."
	adb shell am start -n com.example.helloworld/.MainActivity

lint:
	@echo "Running lint checks..."
	$(GRADLE) lint
	@echo ""
	@echo "✓ Lint report generated at: app/build/reports/lint-results-debug.html"

test:
	@echo "Running unit tests..."
	$(GRADLE) test

deps:
	@echo "Listing project dependencies..."
	$(GRADLE) dependencies

apk: debug

# Convenience targets
assembledebug: debug
	assemblerelease: release
	cleanbuild: clean build
