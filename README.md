# SeatclubTest - React Native Integration

A SwiftUI iOS app with React Native integration, allowing you to embed React Native components within a native iOS application.

## Prerequisites

- Xcode 15+
- Node.js 18+
- CocoaPods
- iOS 15.0+ deployment target

## Setup & Installation

1. **Clone and navigate to the project:**

   ```bash
   cd SeatclubTest
   ```

2. **Install JavaScript dependencies:**

   ```bash
   npm install
   ```

3. **Install iOS dependencies:**
   ```bash
   pod install
   ```

## Running the App

1. **Start the Metro bundler:**

   ```bash
   npm start
   ```

   Keep this terminal window open while developing.

2. **Open the iOS project:**

   ```bash
   open SeatclubTest.xcworkspace
   ```

   ⚠️ **Important:** Always open `.xcworkspace`, never `.xcodeproj`

3. **Build and run in Xcode:**

   - Select an iOS simulator (iPhone 15 recommended)
   - Press ⌘+R or click the Run button

4. **Test the integration:**
   - Tap "Open React Native" button in the SwiftUI app
   - Your React Native app (TestApp) will open in a modal

## Project Structure

```
SeatclubTest/
├── index.js                    # React Native entry point
├── TestApp/                    # Your React Native app
│   └── App.tsx                 # Main React Native component
├── SeatclubTest/               # iOS SwiftUI app
│   ├── ContentView.swift       # Main SwiftUI view
│   ├── ReactNativeView.swift   # SwiftUI wrapper for React Native
│   └── ReactViewController.swift # React Native view controller
├── package.json                # JavaScript dependencies
├── Podfile                     # iOS dependencies
└── SeatclubTest.xcworkspace    # Xcode workspace (use this!)
```

## Development

- **React Native code:** Edit files in `TestApp/`
- **iOS code:** Edit files in `SeatclubTest/`
- **Hot reloading:** React Native changes update automatically
- **iOS changes:** Rebuild in Xcode (⌘+R)

## Troubleshooting

**Metro bundler connection issues:**

```bash
npx react-native start --reset-cache
```

**Build errors after changes:**

```bash
# Clean and reinstall
rm -rf node_modules Pods
npm install
pod install
```

**Xcode build issues:**

- Clean Build Folder (⌘+Shift+K)
- Ensure you're opening `.xcworkspace` not `.xcodeproj`

## Configuration

- **iOS deployment target:** 17.0
- **React Native version:** 0.79.3
- **JavaScript engine:** JSC (Hermes disabled)
- **Architecture:** New Architecture disabled
