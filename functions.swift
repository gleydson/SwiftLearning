// 1

func test(_ p1:String, p2:String) -> String {
    return "\(p1 + p2)"
}

print(test("t1", p2: "t2"))


// 2

func plus(numA: Int, numB: Int) -> Int {
    return numA + numB
}

func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

print(calculate(a: 5, b: 5, operation: plus))

print(calculate(a: 10, b: 10) { (a, b) -> Int in
    return a + b
})

print(calculate(a: 10, b: 10) { a, b in
    return a + b
})

print(calculate(a: 10, b: 10) { a, b in a + b })

print(calculate(a: 10, b: 10) { $0 + $1 })


