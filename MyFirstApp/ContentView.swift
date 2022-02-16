//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users = ["Ian", "Maria", "Igor"]
    
    var body: some View {
        /*NavigationView {
            Text("SwiftUI!")
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Button("Help") {
                            print("Tapped!")
                        }
                        Button("About") {
                            print("About Tapped!")
                        }
                    }
                }
            }
        }*/
        NavigationView {
            List {
                ForEach(users, id: \.self) {
                    Text($0)
                } .onDelete(perform: delete)
                  .onMove(perform: move)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
