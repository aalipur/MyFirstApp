//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedView = 1
    
    var body: some View {
        TabView(selection: $selectedView) {
            Text("first View")
                .tabItem{
                    Image(systemName: "1.circle")
                    Text("First")
                } .tag(1) // отслеживать в коде какое окно активно
            Text("Second View")
                .tabItem{
                    Image(systemName: "2.circle")
                    Text("Second")
                } .tag(2)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
