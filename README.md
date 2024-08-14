# Developer Tools For Spatial Advertising

YourLibraryName is a Swift library that [brief description of what your library does].

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
  - [Generating API Keys](#generating-api-keys)
  - [Importing the Package](#importing-the-package)
- [Usage](#usage)
- [Documentation](#documentation)
- [Contributing](#contributing)
- [License](#license)

## Features

- [List key features of your library]
- 
- 

## Requirements

- iOS 13.0+ / macOS 10.15+
- Xcode 12.0+
- Swift 5.3+

## Installation

YourLibraryName can be installed using Swift Package Manager.

1. In Xcode, select "File" → "Swift Packages" → "Add Package Dependency"
2. Enter the repository URL: `https://github.com/yourusername/YourLibraryName.git`
3. Select the version you want to use

## Getting Started

### Generating API Keys

To use YourLibraryName, you'll need to generate API keys from our website. Follow these steps:

1. Go to [Your Website URL]
2. Sign up or log in to your account
3. Navigate to the API Keys section
4. Click on "Generate New API Key"

[Insert image of the API Keys section on your website]

5. Copy your newly generated API key

[Insert image showing where to copy the API key]

### Importing the Package

After installing the package, import it in your Swift file:

```swift
import YourLibraryName

```swift
import SwiftUI
import adxr

private let API_KEY = "foo"
private let SECRET_KEY = "bar"

struct ContentView: View {
  @StateObject private var adManager = ADXR.shared

  do {
    try await adManager.getAd(
      apiKey: API_KEY,
      secretKey: SECRET_KEY
      )
    } catch {
      print("Error showing ad: \(error)")
    }
  }
}

@main
struct ADXRDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

```
