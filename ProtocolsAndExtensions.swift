// Protocls

protocol PersonProtocol {
    var name: String { get }
}

class Student: PersonProtocol {
    private(set) var name: String {
        didSet {
            print("Nome foi modificado")
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func changeName(to newName: String) {
        self.name = newName
    }
}

struct Teacher: PersonProtocol {
    var name: String {
        return "Gleydson Professor"
    }
}

let student = Student(name: "Gleydson")

student.changeName(to: "João")


// Methods Requirements

class Data {
    var capacity: Int
    init(capacity: Int) {
        self.capacity = capacity
    }
}

protocol Sensor {
    func stop()
    func start()
    func read() -> Data
}

extension Sensor {
    func stop() {
        print("Stop")
    }
}

class LightSensor: Sensor {
    // Pode remover pois foi criado um comportamento padrão na extension para a func stop
//    func stop() {
//        print("Stop")
//    }
//
    func start() {
        print("Start")
    }
    
    func read() -> Data {
        return Data(capacity: 300)
    }
}

func startSensors(_ sensors: [Sensor]) {
    sensors.forEach{sensor in
        sensor.start()
    }
}

let s1 = LightSensor()
let s2 = LightSensor()
let s3 = LightSensor()

startSensors([s1, s2, s3])

// Extensions

extension Int {
    var absoluteValue: Int {
        return self > 0 ? self : -self
    }
    
    mutating func add (_ value: Int) {
        self += value
    }
    
    //    func add(_ value: Int) -> {
    //        return self + value
    //    }
    
    init(roundingNumber: Double) {
        self = Int(roundingNumber.rounded())
    }
    
}

var num = -40
print(num.absoluteValue)

num.add(50)

let number = Int(roundingNumber: 6.6)

extension Student: CustomStringConvertible {
    var description: String {
        return name
    }
}

print(student)


extension PersonProtocol where Self: CustomStringConvertible {
    var description: String {
        return name
    }
}

extension Teacher: CustomStringConvertible {}

let t = Teacher()

print(t)
