/*: [Intro](Introduction)
 ## Binary Search
 */
private func binarySearch<T: Comparable>(in list: [T], for searchingValue: T) -> T? {
    var lowBound = 0
    var highBound = list.count-1

    while lowBound <= highBound {
        let middleOfList = (highBound+lowBound) / 2
        let guessValue = list[middleOfList]

        if guessValue == searchingValue {
            return guessValue
        } else if guessValue < searchingValue {
            lowBound = middleOfList + 1
        } else {
            highBound = middleOfList - 1
        }
    }

    return nil
}

let searchingList = [1, 3, 7, 200, 247]

print(binarySearch(in: searchingList, for: 247))
