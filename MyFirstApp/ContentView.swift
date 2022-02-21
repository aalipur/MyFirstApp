//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct CustomText: View {
    
    var name: String
    var body: some View {
        Text(name)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.red)
            .background(Color.green)
    }
}

struct CustomModifier: ViewModifier {
    
    func body(content : Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
    }
}

struct ContentView: View {
    
    //@State private var useGreenText = false
    
    var body: some View {
        /*Button("Hello, World!") { // условный модификатор
            self.useGreenText.toggle()
        } .foregroundColor(useGreenText ? .green: .blue) */
        /*VStack(spacing: 30) {
            CustomText(name: "First")
            CustomText(name: "Second")
        } */
        Text("Hello, Swift!")
            .CustomM()
    }
}

extension View {
    
    func CustomM() -> some View {
        self.modifier(CustomModifier)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
