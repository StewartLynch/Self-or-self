/*:
 [< Previous](@previous)                    [Home](1%20Introduction)
 ## \\.self
 - Callout(\\.self keypath):  used in contexts where you need to refer to the object itself, rather than one of its properties.
 */

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    let names = ["Alice", "Bob", "Charlie", "Diana"]
    var body: some View {
        List(names, id: \.self) { name in
            Text(name)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

//: [< Previous](@previous)                    [Home](1%20Introduction)
