<p align="center">
  <img alt="AdXR Logo" src="https://adxrblob1.blob.core.windows.net/container1/logo.png?sp=r&st=2024-08-15T21:46:38Z&se=2034-08-16T05:46:38Z&spr=https&sv=2022-11-02&sr=b&sig=UqydagO%2BwM9g4ARRBYImw767JFFAAgj1jK5dhO64ujo%3D" width="25%">
</p>

# Developer Tools For Spatial Advertising

The AdXR SDK is a Swift library that [brief description of what your library does].

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
  - [Generating API Keys](#generating-api-keys)
- [Usage](#usage)
- [License](#license)

## Features

- [List key features of your library]
- 
- 

## Requirements

- VisionOS 1.2+
- Xcode 12.0+
- Swift 5.3+

## Installation

AdXR can be installed using the Swift Package Manager.

1. In Xcode, select "File" → "Swift Packages" → "Add Package Dependency"
2. Enter the repository URL: `https://github.com/AdXR-io/AdXR`
3. Select the version you want to use

## Getting Started

### Generating API Keys

To use YourLibraryName, you'll need to generate API keys from our website. Follow these steps:

1. Go to `https://www.adxr.io`
2. Sign up or log in to your developer account
3. Navigate to the API Keys section
<p align="center">
  <img alt="AdXR Logo" src="https://adxrblob1.blob.core.windows.net/container1/dev_dashboard.png?sp=r&st=2024-08-15T21:52:52Z&se=2034-08-16T05:52:52Z&spr=https&sv=2022-11-02&sr=b&sig=ZZPBiBLorsimPU3eCJZg4XWWHasf6eNysGhVnFUpWqQ%3D" width="80%">
</p>
   
4. Click on "New Key"
<p align="center">
  <img alt="AdXR Logo" src="https://adxrblob1.blob.core.windows.net/container1/key_gen.png?sp=r&st=2024-08-15T21:53:24Z&se=2034-08-16T05:53:24Z&spr=https&sv=2022-11-02&sr=b&sig=k4P1T73SC4xguUMqfl7UNeF4xgsofe1S17jvXThRetk%3D" width="80%">
</p>

5. Save your newly generated API key pair.

## Usage

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

<p align="center">
  <img alt="AdXR Logo" src="https://adxrblob1.blob.core.windows.net/container1/sample_learnmore.png?sp=r&st=2024-08-15T22:01:03Z&se=2034-08-16T06:01:03Z&spr=https&sv=2022-11-02&sr=b&sig=A8ifNrvg3HYYQBnpCCdu0NhfqjxX3wcQQG7QO5KcBw0%3D" width="80%">
</p>

<p align="center">
  <img alt="AdXR Logo" src="https://adxrblob1.blob.core.windows.net/container1/sample_ad.png?sp=r&st=2024-08-15T22:00:00Z&se=2024-08-16T06:00:00Z&spr=https&sv=2022-11-02&sr=b&sig=JlwjlZGX2gVbeq5NhauWy4V1ZeKQALQ0mxQVyAPPqlc%3D" width="80%">
</p>


## License

This repository is not licensed for public use. All rights are reserved by AdXR. Unauthorized use, copying, modification, or distribution of this code or binaries is strictly prohibited.
