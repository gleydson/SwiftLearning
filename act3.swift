func map<T, Return>(_ array: [T], transform: (_ element: T) -> Return) -> [Return] {
    var result = [Return]()
    for el in array {
        let proccessedValue = transform(el)
        result.append(proccessedValue)
    }
    return result
}

let numbers = [1, 2, 3, 4, 5 , 6, 7]
let newArray = map(numbers) { number in
    return "\(number)"
}

print(newArray)
