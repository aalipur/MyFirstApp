//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*Image("wired")
            .resizable()
            .aspectRatio(contentMode: .fit)*/
        /*Image(systemName: "cloud.sun.fill")
            .font(.largeTitle)
            .padding(30)
            .background(Color.green)
            .foregroundColor(Color.blue)
            .clipShape(Circle())*/
        Text("Hello, Apple!")
            .background(Image(systemName: "message")
                            .resizable()
                            .frame(width: 130, height: 50, alignment: .center))
            
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
