//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Let's style our text views with fonts, colors and line spacing.")
            //.kerning(5)
            .tracking(5) // не добавит пробел в конец в отличии от kerning
            .lineLimit(nil)
            .truncationMode(.middle)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .background(Color.init(uiColor: .red))
            .foregroundColor(.blue)
            .lineSpacing(50)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
