//
//
// ScrollViewRTL.swift
// ScrollViewRTL
//
// Created by Muhammad Azad on 19/01/2024
// Copyright © 2024 Muhammad Azad. All rights reserved.
//

import SwiftUI

/// A custom `ScrollView` designed to support right-to-left (RTL) layouts.
///
/// This `ScrollViewRTL` struct allows for easy integration of RTL scrolling behavior in SwiftUI applications.
///
/// # Usage
///
/// To use `ScrollViewRTL`, initialize an instance by specifying the `RowType`, which can be either `.horizontal` for
/// horizontal scrolling or `.vertical` for vertical scrolling. By default, the scroll indicators are shown, but you can
/// control this behavior using the `showsIndicators` parameter.
///
/// ```swift
/// ScrollViewRTL(type: .horizontal) {
///     // Your content here
/// }
/// ```
///
public struct ScrollViewRTL<Content: View>: View {
    /// The content to be displayed in the scroll view.
    @ViewBuilder var content: Content
    
    /// The layout direction environment property.
    @Environment(\.layoutDirection) private var direction
    
    /// The type of the row, either horizontal or vertical.
    private var type: RowType
    
    /// A boolean value indicating whether the scroll indicators should be shown.
    private var showsIndicators: Bool

    /// Initializes a new instance of `ScrollViewRTL`.
    ///
    /// - Parameters:
    ///   - type: The type of the row, either `.horizontal` or `.vertical`.
    ///   - showsIndicators: A boolean value indicating whether to show scroll indicators.
    ///   - content: The content to be displayed in the scroll view.
    public init(type: RowType, showsIndicators: Bool = true, @ViewBuilder content: () -> Content) {
        self.type = type
        self.showsIndicators = showsIndicators
        self.content = content()
    }

    /// The body of the view.
    public var body: some View {
        if #available(iOS 17.0, *) {
            scrollViewForModerniOS
        } else {
            scrollViewForEarlieriOS
        }
    }

    /// The scroll view implementation for iOS 17.0 and later.
    @available(iOS 17.0, tvOS 16.4, macOS 13.3, *)
    private var scrollViewForModerniOS: some View {
        ScrollView(type.scrollAxis, showsIndicators: showsIndicators) {
            content
        }
        .scrollBounceBehavior(.basedOnSize, axes: .horizontal)
    }

    /// The scroll view implementation for earlier iOS versions.
    private var scrollViewForEarlieriOS: some View {
        ScrollView(type.scrollAxis, showsIndicators: showsIndicators) {
            content
                .rotation3DEffect(Angle(degrees: rotationAngle), axis: rotationAxis)
        }
        .rotation3DEffect(Angle(degrees: rotationAngle), axis: rotationAxis)
    }

    /// The rotation angle based on the layout direction.
    private var rotationAngle: Double {
        return direction == .rightToLeft ? -180 : 0
    }

    /// The rotation axis based on the layout direction.
    private var rotationAxis: (x: CGFloat, y: CGFloat, z: CGFloat) {
        return (
            x: CGFloat(0),
            y: CGFloat(direction == .rightToLeft ? -10 : 0),
            z: CGFloat(0)
        )
    }
}

/// An enum representing the type of row for the `ScrollViewRTL` struct.
public enum RowType {
    case horizontal
    case vertical

    /// The scroll axis associated with the row type.
    public var scrollAxis: Axis.Set {
        switch self {
        case .horizontal:
            return .horizontal

        case .vertical:
            return .vertical
        }
    }
}
