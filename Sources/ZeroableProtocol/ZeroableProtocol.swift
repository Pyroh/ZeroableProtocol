//
//  ZeroableProtocol.swift
//
//  ZeroableProtocol
//
//  MIT License
//
//  Copyright (c) 2021 Pierre Tacchi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//


import Foundation
import SwiftUI
#if !os(macOS)
import CoreGraphics
#endif

public protocol Zeroable { static var zero: Self { get } }
public extension Zeroable where Self: Equatable {
    @inlinable var isZero: Bool { self == .zero }
}

// MARK: - Stdlib Related
extension Double: Zeroable { }
extension Float: Zeroable { }
extension Int: Zeroable { }
extension Int64: Zeroable { }
extension Int32: Zeroable { }
extension Int16: Zeroable { }
extension Int8: Zeroable { }
extension UInt: Zeroable { }
extension UInt64: Zeroable { }
extension UInt32: Zeroable { }
extension UInt16: Zeroable { }
extension UInt8: Zeroable { }
extension ClosedRange: Zeroable where Bound: Zeroable {
    @inlinable public static var zero: ClosedRange<Bound> {
        .init(uncheckedBounds: (.zero, .zero))
    }
}
extension Range: Zeroable where Bound: Zeroable {
    @inlinable public static var zero: Range<Bound> {
        .init(uncheckedBounds: (.zero, .zero))
    }
}

// MARK: - Core Graphics Related
extension CGFloat: Zeroable { }
extension CGPoint: Zeroable { }
extension CGRect: Zeroable { }
extension CGSize: Zeroable { }
extension CGVector: Zeroable { }

// MARK: - Foundation Related
extension NSRange: Zeroable {
    @inlinable public static var zero: NSRange { .init(location: 0, length: 0) }
}

// MARK: - UIKit Related
#if canImport(UIKit)
import UIKit

extension UIOffset: Zeroable { }
extension UIEdgeInsets: Zeroable { }
#if !os(watchOS)
extension UIFloatRange: Zeroable { }
#endif
extension NSDirectionalEdgeInsets: Zeroable { }
#endif

// MARK: - SwiftUI Related
#if canImport(SwiftUI)

extension Angle: Zeroable { }
extension AnimatablePair: Zeroable { }
extension EmptyAnimatableData: Zeroable { }
extension UnitPoint: Zeroable { }
#endif



