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
linearSearch(array: array, 4)


/**
 性能:
 1.最差情况下O(n),运行时需要将所查找的对象和数组中的每个对象进行比较,因此所花费的时间和数组的长度成正比.
 2.最佳情况下O(1),运行时如果数组的第一个元素就是所需要查找的对象,那么理想情况下所f花费的时间是最短的.
 */
