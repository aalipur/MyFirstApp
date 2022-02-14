//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // линейный градиент
        /*Text("Hello, World!")
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)) */
        // радиальный градиент
        /*let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
        let gradient = RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
        return Circle()
            .fill(gradient)
            .frame(width: 400, height: 400) */
        // угловой градиент
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
        let gradient = AngularGradient(gradient: colors, center: .center)
        return Circle()
            .strokeBorder(gradient, lineWidth: 100)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
