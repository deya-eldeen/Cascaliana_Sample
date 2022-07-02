#if os(iOS)
import UIKit
#endif


public struct Cascaliana {
    
    public enum InterpolationError: Error {
        case invalidInput
    }
    
    public func interpolate<T:BinaryFloatingPoint> (target: T, x:[T], y:[T], n:Int = 100) throws -> T {
        
        guard !x.isEmpty, !y.isEmpty else { throw InterpolationError.invalidInput }
        
        if target <= x[0] { return y[0] }
        for i in 1...n {
            if target <= x[i] {
                let ans = (target-x[i-1]) * (y[i] - y[i-1]) / (x[i]-x[i-1]) + y[i-1]
                return ans
            }
        }
        return y[n]
    }
    
    public init() {
        #if os(iOS)
        let sample = UIImage(named: "Sample", in: .module, with: nil)
        #endif
        
    }
    
}
