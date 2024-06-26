# ScrollViewRTL
[![Swift](https://img.shields.io/badge/Swift-5.7_5.8_5.9_5.10-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.7_5.8_5.9-Orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS-Green?style=flat-square)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

## Table of Contents

1. [Description](#description)
2. [Motivation](#motivation)
3. [Features](#features)
4. [Installation](#installation)
5. [Platform and Version Support](#platform-and-version-support)
6. [Usage](#usage)
7. [Example Project](#example-project)
8. [Contribution](#contribution)

## Description

ScrollViewRTL is a custom SwiftUI ScrollView designed to support right-to-left (RTL) layouts.

## Motivation

ScrollViewRTL was created to address a common issue in SwiftUI applications where changing the language inside the app did not automatically flip the ScrollView to right-to-left (RTL) layout. This package provides an easy-to-use solution that seamlessly integrates RTL scrolling behavior, ensuring a consistent and user-friendly experience when switching between different languages within an application. If you've encountered challenges with ScrollView behavior during language changes in your SwiftUI app, ScrollViewRTL aims to simplify the implementation and make it accessible to other developers facing similar issues. Your contributions and feedback are welcome as we work together to enhance SwiftUI applications with improved RTL support.

## Features

- Easy integration of RTL scrolling behavior in SwiftUI applications.
- Supports both horizontal and vertical scrolling.
- Provides options to control scroll indicators.

## Installation

To integrate ScrollViewRTL into your Xcode project, follow these steps:

1. In Xcode, select **File > Swift Packages > Add Package Dependency...**.
2. Enter the following URL when prompted: [https://github.com/Muhammadbarznji/ScrollViewRTL.git]
3. Follow the on-screen instructions to complete the integration.

## Platform and Version Support

ScrollViewRTL supports the following platforms and minimum versions:

- macOS: 10.14 and later
- iOS: 13.0 and later
- tvOS: 13.0 and later

## Usage

To use ScrollViewRTL in your SwiftUI views, follow these steps:

1. Import ScrollViewRTL into your SwiftUI file:

    ```swift
    import ScrollViewRTL
    ```

2. Initialize an instance of ScrollViewRTL by specifying the RowType:

    ```swift
    ScrollViewRTL(type: .horizontal) {
        // Your content here
    }
    ```

    Replace `.horizontal` with `.vertical` as needed.

3. Customize the ScrollViewRTL instance by adjusting the `showsIndicators` parameter:

    ```swift
    ScrollViewRTL(type: .vertical, showsIndicators: false) {
        // Your content here
    }
    ```
    
## Example Project

To help you get started quickly, an example project demonstrating the usage of ScrollViewRTL is included in the [Example](https://github.com/Muhammadbarznji/ScrollViewRTL/tree/main/ScrollViewRTLExample) directory. The example project showcases a SwiftUI application with language-changing buttons and a ScrollViewRTL instance for both horizontal and vertical scrolling.

To run the example project:

1. Navigate to the [Example](https://github.com/Muhammadbarznji/ScrollViewRTL/tree/main/ScrollViewRTLExample) directory.
2. Open the `ScrollViewRTLExample.xcodeproj` file in Xcode.
3. Build and run the project.

Feel free to explore the example project to see how ScrollViewRTL can be integrated into your SwiftUI applications.

## Contribution

Your contributions are highly welcome! If you encounter any issues, have feature requests, or want to contribute to the development of ScrollViewRTL, here's how you can get involved:

1. **Issue Reporting:**
   - If you find a bug or have a general question, please open an [issue](https://github.com/Muhammadbarznji/ScrollViewRTL/issues) to report it.

2. **Feature Requests:**
   - If you have a feature request or would like to propose an enhancement, please open an [issue](https://github.com/Muhammadbarznji/ScrollViewRTL/issues) to discuss it.

3. **Pull Requests:**
   - Contributions through pull requests are highly appreciated.
   - Fork the repository and create a new branch for your changes.
   - Ensure your code adheres to the existing coding style and Swift conventions.
   - Create a pull request, providing a clear description of your changes and the problem or feature they address.

4. **Spread the Word:**
   - If ScrollViewRTL has been helpful to you, consider giving it a star on [GitHub](https://github.com/Muhammadbarznji/ScrollViewRTL). This helps others discover the package.
