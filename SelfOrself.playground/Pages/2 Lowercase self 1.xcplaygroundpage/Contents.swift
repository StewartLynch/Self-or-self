/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## self
 - Callout(self): self refers to the current instance of the type.
 
 * To explicitly refer to instance properties or methods (useful in closures).
 */
import Foundation

code(for: "Class example") {
    class Person {
        var name:String
        init() {
            name = ""
        }
    }
    let person = Person()
    
    class Person2 {
        var name: String
        init(newName: String) {
            name = newName
        }
    }
    let person2 = Person2(newName: "Stewart")
    
    class Person3 {
        var name: String
        init(name: String) {
            self.name = name
        }
    }
}

code(for: "Struct Example") {
    struct Person {
        var name: String
    }
    let person = Person(name: "Stewart")
    
    struct Person2 {
        var name: String
        init(name: String) {
            self.name = name
        }
    }
}

code(for: "enum example") {

}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */
