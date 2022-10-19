/*: [Intro](Introduction)
 ## Recursion
 */
var array = [1, 2, 3, 5, 1000]

func recursiveSum<T: Numeric>(for list: inout [T]) -> T {
    guard list.isEmpty else {
        return list.removeFirst() + recursiveSum(for: &list)
    }

    return 0
}

print(recursiveSum(for: &array))

func recursiveArrayCounter<T>(for list: [T]) -> Int {
    let localList = list

    guard localList.isEmpty else {
        return 1 + recursiveArrayCounter(for: localList.dropLast())
    }

    return 0
}

print(recursiveArrayCounter(for: [1,2,3,4,5,6]))
