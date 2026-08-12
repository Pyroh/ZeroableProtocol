//
//  ZeroableProtocolTests.swift
//
//  ZeroableProtocol Tests
//
//  MIT License
//
//  Copyright (c) 2021 Pierre Tacchi
//

import Testing
import Foundation
#if canImport(LinuxShims)
import LinuxShims
#endif
#if canImport(CoreGraphics)
import CoreGraphics
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif

@testable import ZeroableProtocol // Adjust this import to match your module name

@Suite("Zeroable Protocol Tests")
struct ZeroableProtocolTests {
    
    // MARK: - Stdlib Numeric Types
    
    @Suite("Standard Library Numeric Types")
    struct StdlibNumericTests {
        
        @Test("Double zero value")
        func doubleZero() {
            #expect(Double.zero == 0.0)
            #expect(Double.zero.isZero)
        }
        
        @Test("Float zero value")
        func floatZero() {
            #expect(Float.zero == 0.0)
            #expect(Float.zero.isZero)
        }
        
        @Test("Int zero value")
        func intZero() {
            #expect(Int.zero == 0)
            #expect(Int.zero.isZero)
        }
        
        @Test("Int64 zero value")
        func int64Zero() {
            #expect(Int64.zero == 0)
            #expect(Int64.zero.isZero)
        }
        
        @Test("Int32 zero value")
        func int32Zero() {
            #expect(Int32.zero == 0)
            #expect(Int32.zero.isZero)
        }
        
        @Test("Int16 zero value")
        func int16Zero() {
            #expect(Int16.zero == 0)
            #expect(Int16.zero.isZero)
        }
        
        @Test("Int8 zero value")
        func int8Zero() {
            #expect(Int8.zero == 0)
            #expect(Int8.zero.isZero)
        }
        
        @Test("UInt zero value")
        func uintZero() {
            #expect(UInt.zero == 0)
            #expect(UInt.zero.isZero)
        }
        
        @Test("UInt64 zero value")
        func uint64Zero() {
            #expect(UInt64.zero == 0)
            #expect(UInt64.zero.isZero)
        }
        
        @Test("UInt32 zero value")
        func uint32Zero() {
            #expect(UInt32.zero == 0)
            #expect(UInt32.zero.isZero)
        }
        
        @Test("UInt16 zero value")
        func uint16Zero() {
            #expect(UInt16.zero == 0)
            #expect(UInt16.zero.isZero)
        }
        
        @Test("UInt8 zero value")
        func uint8Zero() {
            #expect(UInt8.zero == 0)
            #expect(UInt8.zero.isZero)
        }
        
        @Test("Non-zero values return false for isZero")
        func nonZeroValues() {
            #expect(!Double(1.0).isZero)
            #expect(!Float(5.5).isZero)
            #expect(!Int(42).isZero)
            #expect(!Int64(100).isZero)
            #expect(!UInt(7).isZero)
        }
    }
    
    // MARK: - Range Types
    
    @Suite("Range Types")
    struct RangeTests {
        
        @Test("ClosedRange<Int> zero value")
        func closedRangeIntZero() {
            let zero = ClosedRange<Int>.zero
            #expect(zero.lowerBound == 0)
            #expect(zero.upperBound == 0)
            #expect(zero.isZero)
        }
        
        @Test("ClosedRange<Double> zero value")
        func closedRangeDoubleZero() {
            let zero = ClosedRange<Double>.zero
            #expect(zero.lowerBound == 0.0)
            #expect(zero.upperBound == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("Range<Int> zero value")
        func rangeIntZero() {
            let zero = Range<Int>.zero
            #expect(zero.lowerBound == 0)
            #expect(zero.upperBound == 0)
            #expect(zero.isZero)
        }
        
        @Test("Range<Double> zero value")
        func rangeDoubleZero() {
            let zero = Range<Double>.zero
            #expect(zero.lowerBound == 0.0)
            #expect(zero.upperBound == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("Non-zero ranges return false for isZero")
        func nonZeroRanges() {
            let closedRange = 1...10
            let range = 5..<15
            #expect(!closedRange.isZero)
            #expect(!range.isZero)
        }
    }
    
    // MARK: - Core Graphics Types
    
    @Suite("Core Graphics Types")
    struct CoreGraphicsTests {
        
        @Test("CGFloat zero value")
        func cgFloatZero() {
            #expect(CGFloat.zero == 0.0)
            #expect(CGFloat.zero.isZero)
        }
        
        @Test("CGPoint zero value")
        func cgPointZero() {
            let zero = CGPoint.zero
            #expect(zero.x == 0.0)
            #expect(zero.y == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("CGRect zero value")
        func cgRectZero() {
            let zero = CGRect.zero
            #expect(zero.origin.x == 0.0)
            #expect(zero.origin.y == 0.0)
            #expect(zero.size.width == 0.0)
            #expect(zero.size.height == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("CGSize zero value")
        func cgSizeZero() {
            let zero = CGSize.zero
            #expect(zero.width == 0.0)
            #expect(zero.height == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("CGVector zero value")
        func cgVectorZero() {
            let zero = CGVector.zero
            #expect(zero.dx == 0.0)
            #expect(zero.dy == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("Non-zero Core Graphics values")
        func nonZeroCoreGraphicsValues() {
            #expect(!CGFloat(10.0).isZero)
            #expect(!CGPoint(x: 5, y: 10).isZero)
            #expect(!CGRect(x: 0, y: 0, width: 100, height: 100).isZero)
            #expect(!CGSize(width: 50, height: 50).isZero)
            #expect(!CGVector(dx: 1, dy: 1).isZero)
        }
    }
    
    // MARK: - Foundation Types
    
    @Suite("Foundation Types")
    struct FoundationTests {
        
        @Test("NSRange zero value")
        func nsRangeZero() {
            let zero = NSRange.zero
            #expect(zero.location == 0)
            #expect(zero.length == 0)
            #expect(zero.isZero)
        }
        
        @Test("Non-zero NSRange")
        func nonZeroNSRange() {
            let range = NSRange(location: 5, length: 10)
            #expect(!range.isZero)
        }
    }
    
    // MARK: - UIKit Types
    
    #if canImport(UIKit)
    @Suite("UIKit Types")
    struct UIKitTests {
        
        @Test("UIOffset zero value")
        func uiOffsetZero() {
            let zero = UIOffset.zero
            #expect(zero.horizontal == 0.0)
            #expect(zero.vertical == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("UIEdgeInsets zero value")
        func uiEdgeInsetsZero() {
            let zero = UIEdgeInsets.zero
            #expect(zero.top == 0.0)
            #expect(zero.left == 0.0)
            #expect(zero.bottom == 0.0)
            #expect(zero.right == 0.0)
            #expect(zero.isZero)
        }
        
        #if !os(watchOS)
        @Test("UIFloatRange zero value")
        func uiFloatRangeZero() {
            let zero = UIFloatRange.zero
            #expect(zero.minimum == 0.0)
            #expect(zero.maximum == 0.0)
            #expect(zero.isZero)
        }
        #endif
        
        @Test("NSDirectionalEdgeInsets zero value")
        func nsDirectionalEdgeInsetsZero() {
            let zero = NSDirectionalEdgeInsets.zero
            #expect(zero.top == 0.0)
            #expect(zero.leading == 0.0)
            #expect(zero.bottom == 0.0)
            #expect(zero.trailing == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("Non-zero UIKit values")
        func nonZeroUIKitValues() {
            #expect(!UIOffset(horizontal: 10, vertical: 5).isZero)
            #expect(!UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4).isZero)
            #expect(!NSDirectionalEdgeInsets(top: 1, leading: 2, bottom: 3, trailing: 4).isZero)
        }
    }
    #endif
    
    // MARK: - SwiftUI Types
    
    #if canImport(SwiftUI)
    @Suite("SwiftUI Types")
    struct SwiftUITests {
        
        @Test("Angle zero value")
        func angleZero() {
            let zero = Angle.zero
            #expect(zero.radians == 0.0)
            #expect(zero.degrees == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("AnimatablePair zero value")
        func animatablePairZero() {
            let zero = AnimatablePair<Double, Double>.zero
            #expect(zero.first == 0.0)
            #expect(zero.second == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("EmptyAnimatableData zero value")
        func emptyAnimatableDataZero() {
            let zero = EmptyAnimatableData.zero
            #expect(zero.isZero)
        }
        
        @Test("UnitPoint zero value")
        func unitPointZero() {
            let zero = UnitPoint.zero
            #expect(zero.x == 0.0)
            #expect(zero.y == 0.0)
            #expect(zero.isZero)
        }
        
        @Test("Non-zero SwiftUI values")
        func nonZeroSwiftUIValues() {
            #expect(!Angle(degrees: 90).isZero)
            #expect(!AnimatablePair<Double, Double>(1.0, 2.0).isZero)
            #expect(!UnitPoint(x: 0.5, y: 0.5).isZero)
        }
    }
    #endif
    
    // MARK: - Edge Cases and Generic Tests
    
    @Suite("Edge Cases and Generic Behavior")
    struct EdgeCaseTests {
        
        @Test("Negative values are not zero")
        func negativeValues() {
            #expect(!Double(-1.0).isZero)
            #expect(!Int(-5).isZero)
            #expect(!CGFloat(-0.1).isZero)
        }
        
        @Test("Very small non-zero values")
        func verySmallValues() {
            #expect(!Double(0.0001).isZero)
            #expect(!Float(0.00001).isZero)
            #expect(!CGFloat(0.000001).isZero)
        }
        
        @Test("Zero equivalence across types")
        func zeroEquivalence() {
            let doubleZero = Double.zero
            let intZero = Int.zero
            let cgFloatZero = CGFloat.zero
            
            #expect(doubleZero == 0.0)
            #expect(intZero == 0)
            #expect(cgFloatZero == 0.0)
        }
        
        @Test("Zeroable protocol conformance allows generic usage")
        func genericUsage() {
            func isValueZero<T: Zeroable & Equatable>(_ value: T) -> Bool {
                value.isZero
            }
            
            #expect(isValueZero(Double.zero))
            #expect(isValueZero(Int.zero))
            #expect(isValueZero(CGPoint.zero))
            #expect(!isValueZero(Double(1.0)))
            #expect(!isValueZero(Int(5)))
        }
        
        @Test("Multiple zero instantiations are equal")
        func multipleZeroInstantiations() {
            let zero1 = Int.zero
            let zero2 = Int.zero
            #expect(zero1 == zero2)
            
            let cgZero1 = CGPoint.zero
            let cgZero2 = CGPoint.zero
            #expect(cgZero1 == cgZero2)
        }
    }
}
