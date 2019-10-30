// enums

enum Power {
    case on
    case off
}


enum Month: String {
    case jan = "Janeiro", feb, mar, apr, may
}


let january = Month.jan
let february: Month = .feb


january.rawValue


// interações

extension Month: CaseIterable {}

Month.allCases

// variables and methods

enum PowerState: String {
    case on = "Ligado"
    case off = "Desligado"
    
    var text: String {
        return rawValue
    }
}

enum States {
    case on(Bool)
    
    var text: String {
        switch self {
        case .on(let isTurnedOn):
            return isTurnedOn ? "Ligado" : "Desligado"
        }
    }
}

let state = States.on(false)

// access control


/*
  public
  internal
  private
  filePrivate
  open
  final
*/

// generics

struct MyList<T> {
    private(set) var list: [T] = []
    
    mutating func add (_ element: T) {
        list.append(element)
    }
}

var intList = MyList<Int>()

intList.add(5)


// generics -> restrictions

func sum<T: FloatingPoint>(v1: T, v2: T) -> T {
    return v1 + v2
}

sum(v1: 5.5, v2: 2.2)

