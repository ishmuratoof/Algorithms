/*: [Intro](Introduction)
 ## Selection Sort
 */
func findSmallest<T: Comparable>(for array: [T]) -> Int {
    var smallest = array[0]
    var smallestIndex = 0

    for index in 0 ..< array.count {
        if array[index] < smallest {
            smallest = array[index]
            smallestIndex = index
        }
    }

    return smallestIndex
}

private func selectionSort<T: Comparable>(for array: [T]) -> [T] {
    var sortedArray = [T]()
    var localArray = array

    localArray.forEach {_ in
        let smallest = findSmallest(for: localArray)
        sortedArray.append(localArray.remove(at: smallest))
    }

    return sortedArray
}

print(selectionSort(for: [2, 1, 244, 100, 3, 500]))
