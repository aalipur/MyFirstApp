//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var age = 18
    
    var body: some View {
        VStack {
            Stepper("Enter age", onIncrement: {
                self.age += 1
                print("Adding to age")
            }, onDecrement: {
                self.age -= 1
                print("Subtrackting from age")
            })
            Text("Your age is \(age)")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
