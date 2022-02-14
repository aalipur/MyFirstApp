//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var showDetail = false
    
    var body: some View {
        VStack {
        Button(action: {
            // what to do
            self.showDetail.toggle()
        }) { Text("Show Details")}
            .padding()
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        if showDetail {
            Text("Some details...")
        }
    }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
