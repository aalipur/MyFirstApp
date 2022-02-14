//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {

    var colors = ["black", "white", "red", "green", "blue"]
    @State private var selectedColor = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Choose a color")) {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0])
                }
            } .pickerStyle(SegmentedPickerStyle())
            Text("You selected \(colors[selectedColor])")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
