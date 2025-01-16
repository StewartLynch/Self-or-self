/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## Mixing Self and self
 - Callout(Mixing Self and self): `self` refers to the current instance of the type and `Self` refers to the type itself (not an instance)

 */
import Foundation

extension Int {
    func squared() -> Self {
        self * self
    }
}

code(for: "Extensions") {
    print(10.squared())
}

code(for: "Identifiable Enums") {
    enum Animal: Identifiable {
        case dog, cat, bird
        var id: Self { self }
    }
}

extension Identifiable {
    func type() -> Self.Type {
        Self.self
    }
}

code(for: "Self.self") {
    enum Animal: Identifiable {
        case dog, cat, bird
        var id: Self { self }
    }
    
    enum Car: Identifiable {
        case ford, honda, kia
        var id: Self { self }
    }
    
    let rupert = Animal.dog
    let myCar = Car.kia
    
    print("rupert is a \(rupert.type()) and is a \(String(describing: rupert))")
    print("myCar is a \(myCar.type()) and is a \(String(describing: myCar))")
}
/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */
