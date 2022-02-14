//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showHello = false
    
    var body: some View {
        // Property Wrapper: @State связь кода и действий на экране
        VStack {
            Toggle(isOn: $showHello) {Text("Show Hello!")} // $ связывает переменную showHello с Toggle
                .padding()
            if showHello {
                Text("Hello")
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
