//struct

struct Person {
    var name: String
    var age: Int?
    
    func presentation() -> String {
        return "Hello my name is \(name)"
    }
}

let p = Person(name: "Gleydson", age: 24)

print(p.presentation())

// class

class Vehicle {
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    func drive() {}
}

let vehicle = Vehicle(model: "March")

print(vehicle.model)

// internal (Modules in Swift) -> package (Packages in Java)
// public -> public
// private -> private

// heranca

class Car: Vehicle {
    var numberOfDoors: Int
    init(model: String, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(model: model)
    }
}

let car = Car(model: "March", numberOfDoors: 5)

print(car.model)
print(car.numberOfDoors)

// lazy

struct LazyStruct {
    lazy var lazyVar: String = {
        var text = "Gleydson"
        return text
    }()
}

var ls = LazyStruct()

print(ls.lazyVar)

// computed properties

import Darwin

struct Square {
    var side: Double
    var perimeter: Double {
        return side * 4
    }
    
    var area: Double {
        get {
            return side * side
        }
        set(newArea) {
            side = sqrt(newArea)
        }
    }
}

var square = Square(side: 10)
print(square.perimeter)
square.side = 5
print(square.perimeter)

var square2 = Square(side: 81)
print(square2.area)
square2.area = 9
print(square2.area)


// Property Observers

struct ObserverStruct {
    var name: String {
        willSet {
            print("quase mudando para \(newValue)")
            print("o valor atual eh \(name)")
        }
        didSet {
            print("Mudou \(name)")
        }
    }
}

var os = ObserverStruct(name: "Gleydson")

os.name = "Casa"
