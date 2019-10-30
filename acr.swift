// ARC -> Gerenciador de memória


// reference type

/*
    classes
    closures
 */

// value type

/*
    struct
    enum
 */

// retain cycle

/*
 classes        pessoa -><- apartamento
 apontamentos     2             2
*/

// tipos de referencia

/*
 strong -> padrão
 weak
 */



class Person {
    let name: String
    var house: House?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("A pessoa \(name) foi desalocada")
    }
}

class House {
    let number: Int
    weak var owner: Person?
    
    init(number: Int) {
        self.number = number
    }
    
    deinit {
        print("A casa de número \(number) foi desalocada")
    }
}


var p: Person? = Person(name: "Gleydson")
var h: House? = House(number: 123)


p?.house = h
h?.owner = p
p = nil
h = nil
