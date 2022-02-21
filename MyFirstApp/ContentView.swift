//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

/*struct DetailView: View {
    
    var body: some View {
        Text("This is the default view")
    }
} */

/*struct Dog: Identifiable {
    
    var id = UUID()
    var name: String
}

struct DogRow: View {
    
    var dog: Dog
    var body: some View {
        Text(dog.name)
    }
}

struct DogView: View {
    
    var dog: Dog
    var body: some View {
        Text("Come and choose a \(dog.name)")
            .font(.largeTitle)
    }
} */

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Text("Detail")
            Button("Back") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ContentView: View {
    
    @State private var showDetail = false
    
    var body: some View {
        /*NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Show detail view")
                } .navigationTitle("Navigation")
            }
        } */
        /*let first = Dog(name: "Sobaka")
        let dogs = [first]
        return NavigationView {
            List(dogs) { dog in
                NavigationLink(destination: DogView(dog: dog)) {
                DogRow(dog: dog)
                }
            } .navigationTitle("Choose a dog")
        } */
        Button(action: {
            self.showDetail.toggle()
        }) {
            Text("Show detail")
        } .sheet(isPresented: $showDetail) {
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
