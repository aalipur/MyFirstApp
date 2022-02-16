//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /*Text("Tap me!")
            .onTapGesture {
                print("Tapped!")
            }*/
        /*VStack {
            Image("wired")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2) {
                    print("Double tapped!")
                }
            Spacer()
            Text("Wired")
        }   .contentShape(Rectangle())
            .onTapGesture {
            print("Hello Wired!")
        }*/
        /*Image("wired")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .gesture(LongPressGesture(minimumDuration: 2).onEnded{_ in
                print("Pressed!")
            })*/
        Image("wired")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .gesture(DragGesture(minimumDistance: 50).onEnded{_ in
                print("Dragged!")
            })
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
