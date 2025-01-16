/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 ## self
 - Callout(self): self refers to the current instance of the type.
 
 * To explicitly refer to instance properties or methods (useful in closures).
 */
import Foundation

code(for: "Closures") {
    class IncrementManager {
        var count = 0
        func increment() {
            count += 1
            print("Count is now \(count)")
        }
        
        func incrementAsync() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
                count += 1
                print("After async, count is now \(count)")
            }
        }
    }
    let manager = IncrementManager()
    print(manager.count)
    manager.increment()
    manager.incrementAsync()
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
    
    class DataManager {
        var stringArray: [String] = []
        func addToArray() {
            getRandomCharacter { [weak self] string in
                self?.stringArray.append(string)
            }
        }
    }
    
}

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
 */

/*:
 [< Previous](@previous)                    [Home](1%20Introduction)                    [Next >](@next)
*/
