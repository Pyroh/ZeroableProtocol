import XCTest
@testable import ZeroableProtocol

final class ZeroableProtocolTests: XCTestCase {
    func testZeroable() {
        let d1: Double = 4
        let d2: Double = 0
        
        XCTAssertFalse(d1.isZero)
        XCTAssertTrue(d2.isZero)
    }
}
