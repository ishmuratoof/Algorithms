/*: [Intro](Introduction)
 ## Quick Sort
 */
func quickSort<T: Comparable>(for array: [T]) -> [T] {
    guard array.count > 2 else {
        return array
    }

    let referenceElement = array[array.count/2]
    let leftPart = array.filter({ $0 < referenceElement })
    let rightPart = array.filter({ $0 > referenceElement })

    return quickSort(for: leftPart) + [referenceElement] + quickSort(for: rightPart)
}

print(quickSort(for: [123, 10, 5, 2, 3, -5]))
