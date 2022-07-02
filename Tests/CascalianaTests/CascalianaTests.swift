import XCTest
@testable import Cascaliana

final class CascalianaTests: XCTestCase {
    
    func testInterpolateEmptyArrays() throws {
        let sut = Cascaliana()

        let original_times:[Double] = []
        let original_values:[Double] = []
        
        let ipol = try? sut.interpolate(target: 0, x: original_times, y: original_values)
        print(ipol)
        XCTAssertNil(ipol)
        
    }
    
    func testInterpolate0to100() throws {
        let sut = Cascaliana()

        let original_times:[Double] = [0.0, 10.0]
        let original_values:[Double] = [0.0, 100]
        
        let ipol = try? sut.interpolate(target: 7, x: original_times, y: original_values)
        print(ipol)
        
        XCTAssert(ipol == 70)
        
    }
    
}
