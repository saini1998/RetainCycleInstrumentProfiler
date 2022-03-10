

class Person{
    let name: String
    
    init (name: String){
        self.name = name
        print("\(name) is initialised")
    }
    
    deinit{
        print("\(name) is being deinitialised")
    }
}

class Apartment{
    let number: Int
    weak var tenant: Person?
    
    init (number: Int) {
        self.number = number
    }
}

var bob: Person? = Person(name: "bob")

let apt = Apartment(number: 221)

apt.tenant = bob

bob = nil // deinit not called due to retain cycle

// option 1

//apt.tenant = nil

// option 2

//var apt: Apartment? = Apartment(number: 221)
//apt?.tenant = bob
//bob = nil
//
//apt = nil




