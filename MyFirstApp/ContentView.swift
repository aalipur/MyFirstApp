//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colors = ["red", "green", "blue"]
    @State private var selectedColor = 0
    @State private var additionalSettings = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Colors")) {
                    Picker(selection: $selectedColor, label: Text("Select color")) {
                    ForEach(0..<colors.count) {
                        Text(self.colors[$0])
                        }
                    }
                } .pickerStyle(SegmentedPickerStyle())
                Toggle(isOn: $additionalSettings) {
                    Text("Additional settings")
                }
                Button(action: {
                    //
                }) {
                    Text("Save changes")
                } .disabled(!additionalSettings)
            } .navigationBarTitle("Settings")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
