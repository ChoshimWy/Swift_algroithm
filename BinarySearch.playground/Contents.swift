import UIKit


/// 目标：快速查找数组中的元素。
/// 假设你有一个数字数组，你想确定一个特定的数字是否在该数组中，如果是，则确定在哪个索引处。
/// 在大多数情况下，Swift的indexOf()功能足够好

/// 二进制搜索工作原理:(分而治之)
/// 1.将数组拆分成两半并确定要查找的内容是在左半部分还是在右半部分.
/// 2.如何确定查找内容属于那一半,这就是为什么要首先对数组进行排序的原因.
/// 3.如果确定搜索内容在左半部分,则在该部分重复操作: 拆分 -> 确定区域 -> 拆分 ...
/// 4.重复此过程直到找到所要查找的内容, 如果无法进行拆分数组,这说明该数组中不存在要查找的内容.

func binarySearch<T: Comparable>(a: [T], key: T) -> Int? {
    var range = 0..<a.count
    while range.startIndex < range.endIndex {
        let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            range = (midIndex + 1)..<range.endIndex
        } else {
            range = range.startIndex..<midIndex
        }
    }
    
    return nil
}


let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

let index = binarySearch(a: numbers, key: 19)

///  二进制搜索的本质实际上就是递归, 因为将相同的逻辑一遍又一遍的应用于越来越小的子列阵中,
///  但是这并不是意味着binarySearch就是递归函数,将递归算法转换为迭代版本通常更为有效,使用简单的循环而不是大量的递归函数的调用
/// 注意: 二进制搜索数组必须先排好序, 所以有时候二进制搜索和排序的组合可能比进行简单的线性搜索要慢的很多.
