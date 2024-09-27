import SwiftUI
import adxr

// MARK: - Constants
private let API_KEY = "YOUR_API_KEY_HERE"
private let SECRET_KEY = "YOUR_SECRET_KEY_HERE"

struct ContentView: View {
    @StateObject private var adManager = ADXR.shared
    
    var body: some View {
        VStack(spacing: 20) {
            Text("AdXR Demo App")
                .font(.largeTitle)
                .padding()
            
            Button("Show Ad") {
                showAd()
            }
            .buttonStyle(HoverEffectButtonStyle())
        }
        .withADXR()  // This applies the ADXR view modifier
    }
    
    // MARK: - Ad Display Function
    private func showAd() {
        Task {
            // Example of a process before showing the ad
            print("Preparing to show ad...")
            
            do {
                // Show the ad
                try await adManager.getAd(apiKey: API_KEY, secretKey: SECRET_KEY)
                
                // This code will run after the ad is completed
                print("Ad playback completed")
                
                // Example of a process after the ad is shown
                print("Performing post-ad actions...")
            } catch {
                print("Error showing ad: \(error)")
            }
        }
    }
}

// MARK: - Custom Button Style
struct HoverEffectButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.gray.opacity(0.5) : Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

// MARK: - App Entry Point
@main
struct ADXRDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}