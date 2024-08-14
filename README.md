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
