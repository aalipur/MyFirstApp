//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*VStack(alignment: .center, spacing: 20) {
            //Spacer()
            Text("Hello, world!")
                .padding(.bottom, 50)
            //Divider()
            Spacer()
                .frame(height: 3)
            Text("Hello!")
                .padding(.vertical, 30)
        }*/
        ZStack {
            Image("wired")
            Text("MAGAzINE!")
                .font(.largeTitle)
                .background(Color.blue)
                .foregroundColor(.white)
                .padding(.top, 100)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
