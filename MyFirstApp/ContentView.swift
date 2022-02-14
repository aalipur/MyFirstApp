//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {

    //@State private var name = ""
    @State private var password = ""
    
    var body: some View {
        /*VStack {
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Hello, \(name)")
        }*/
        VStack {
            SecureField("Enter password", text: $password)
            Text("You entered: \(password).")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
