# Developer Tools For Spatial Advertising

YourLibraryName is a Swift library that [brief description of what your library does].

| | |
| --- | --- |
| Testing | [![CI - Test](https://github.com/pandas-dev/pandas/actions/workflows/unit-tests.yml/badge.svg)](https://github.com/pandas-dev/pandas/actions/workflows/unit-tests.yml) [![Coverage](https://codecov.io/github/pandas-dev/pandas/coverage.svg?branch=main)](https://codecov.io/gh/pandas-dev/pandas) |
| Package | [![PyPI Latest Release](https://img.shields.io/pypi/v/pandas.svg)](https://pypi.org/project/pandas/) [![PyPI Downloads](https://img.shields.io/pypi/dm/pandas.svg?label=PyPI%20downloads)](https://pypi.org/project/pandas/) [![Conda Latest Release](https://anaconda.org/conda-forge/pandas/badges/version.svg)](https://anaconda.org/conda-forge/pandas) [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/pandas.svg?label=Conda%20downloads)](https://anaconda.org/conda-forge/pandas) |
| Meta | [![Powered by NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3509134.svg)](https://doi.org/10.5281/zenodo.3509134) [![License - BSD 3-Clause](https://img.shields.io/pypi/l/pandas.svg)](https://github.com/pandas-dev/pandas/blob/main/LICENSE) [![Slack](https://img.shields.io/badge/join_Slack-information-brightgreen.svg?logo=slack)](https://pandas.pydata.org/docs/dev/development/community.html?highlight=slack#community-slack) |

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

## License

This repository is not licensed for public use. All rights are reserved by AdXR. Unauthorized use, copying, modification, or distribution of this code or binaries is strictly prohibited.
