<p align="center">
  <img alt="AdXR Logo" src="https://adxrblob1.blob.core.windows.net/container1/logo.png?sp=r&st=2024-08-15T21:46:38Z&se=2034-08-16T05:46:38Z&spr=https&sv=2022-11-02&sr=b&sig=UqydagO%2BwM9g4ARRBYImw767JFFAAgj1jK5dhO64ujo%3D" width="25%">
</p>

# Developer Tools For Spatial Advertising

The AdXR SDK is a Swift library that allows for the monetization of Vision Pro developer apps by embedding spatial video advertisements.

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
  - [Generating API Keys](#generating-api-keys)
- [Usage](#usage)
- [License](#license)

## Features

- Full-screen overlay
- Support for spatial video shot on both iPhone and Vision Pro
- Choice of when and where to call and display advertisements

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

To use AdXR, you'll need to generate API keys from our website. Follow these steps:

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

Go the /examples folder to see how AdXR's SDK can be integrated into VisionOS apps.

### Importing and creating an adManager
```swift
import SwiftUI
import adxr

private let API_KEY = "YOUR_API_KEY_HERE"
private let SECRET_KEY = "YOUR_SECRET_KEY_HERE"

struct ContentView: View {
  @StateObject private var adManager = ADXR.shared

}
```
Note that the ad being displayed is asynchronous. Developers may choose to build logic around this 'await' to seemlesly integrate ads into their user experience.
```swift
private func showAd() {
    Task {
        do {
            try await adManager.getAd(apiKey: API_KEY, secretKey: SECRET_KEY)
            // Ad playback completed
        } catch {
            print("Error showing ad: \(error)")
        }
    }
}
```

### Applying the ADXR View Modifier
Use the ```.withADXR()``` view modifier to enable spatial ad display:
```swift
var body: some View {
    VStack {
        // Your view content here
    }
    .withADXR()  // This applies the ADXR view modifier
}
```

### Important Features
- Pre and Post Ad Processes: You can add custom logic before and after displaying an ad.
- Error Handling: The getAd() function is wrapped in a do-catch block to handle potential errors.

```swift
private func showAd() {
    Task {
        // Pre-ad process
        print("Preparing to show ad...")
        
        do {
            try await adManager.getAd(apiKey: API_KEY, secretKey: SECRET_KEY)
            
            // Post-ad process
            print("Ad playback completed")
            print("Performing post-ad actions...")
        } catch {
            print("Error showing ad: \(error)")
        }
    }
}
```

### Building Around The Advertisement
Since ```isShowingAd``` is marked as ```@Published public```, developers using the SDK can observe it in a few ways

1. Using ```@ObservedObject```
```swift
struct ContentView: View {
    @ObservedObject var adManager = ADXR.shared
    
    var body: some View {
        Text("Ad is currently \(adManager.isShowingAd ? "showing" : "hidden")")
    }
}
```

2. Using Combine
```swift
class YourViewModel {
    var cancellables = Set<AnyCancellable>()
    
    init() {
        ADXR.shared.$isShowingAd
            .sink { isShowing in
                print("Ad state changed to: \(isShowing)")
                // Handle state change
            }
            .store(in: &cancellables)
    }
}
```

3. Direct property access
```swift
let isCurrentlyShowingAd = ADXR.shared.isShowingAd
```

This is useful for developers who want to:
- Update their UI based on ad state
- Pause game logic while an ad is showing
- Track analytics about when ads are shown
- Coordinate other app behaviors with ad display





<p align="center">
  <img alt="AdXR Logo2" src="https://adxrblob1.blob.core.windows.net/container1/AdXR%20Developer%20Still%20Shot%201.jpg?sp=r&st=2024-08-22T02:55:18Z&se=2034-08-22T10:55:18Z&spr=https&sv=2022-11-02&sr=b&sig=Yx0NwhyQSMixJfT0Lgldu0OJGFPjai7DnD7cILbyx9s%3D" width="80%">
</p>


## License

This repository is not licensed for public use. All rights are reserved by AdXR. Unauthorized use, copying, modification, or distribution of this code or binaries is strictly prohibited.
