import UIKit

/// 线性查找
///
/// - Parameters:
///   - array: 数组源
///   - object: 查找的元素
/// - Returns: 返回元素下标
func linearSearch<T: Equatable>(array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

let array = [5, 3, 4, 2, 7, 8]
let index = linearSearch(array: array, 1)
print(index)

/**
 性能:
 1.最差情况下O(n),
 2.最佳情况下O(1),
 */
