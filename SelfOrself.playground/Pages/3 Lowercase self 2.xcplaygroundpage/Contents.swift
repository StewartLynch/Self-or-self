/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## self
 - Callout(self): self refers to the current instance of the type.

 * To explicitly refer to instance properties or methods (useful in closures).
*/
import Foundation

code(for: "Closures") {

}

code(for: "With Completion Handlers") {
    func getRandomCharacter(completion: @escaping (String) -> Void) {
        // Simulate a delay to mimic an asynchronous operation
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            let characters = "ABCDEFG"
            if let randomChar = characters.randomElement() {
                completion(String(randomChar)) // Return the random character
            } else {
                completion("") // Return an empty string in case of error
            }
        }
    }
    
}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
*/
