let values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]


func filter(array: [Int], clause: (Int) -> Bool) -> [Int] {
    var result = [Int]()
    for element in array where clause(element) {
        result.append(element)
    }
    return result
}
