//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct User: Codable {
    
    var firstName: String
    var lastName: String
}

// JSON Encoder


struct ContentView: View {
    
    //@State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @State private var user = User(firstName: "Ivan", lastName: "Petrov")
    
    var body: some View {
        /*Button("Tap Count \(tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        } */
        Button("Save user") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "User")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
