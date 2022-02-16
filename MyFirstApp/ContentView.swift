//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

// статические элементы
struct MusicRow: View {
    var name: String
    var body: some View {
        Text("Music: \(name)")
    }
}

// динамические элементы
struct Restaurant: Identifiable {
    
    var id = UUID() // обязательная строка для протокола Identifiable
    var name: String
}

struct RestaurantRow: View {
    
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

// список заданий
struct TaskRow: View {
    var body: some View {
        Text("Some text")
    }
}
struct ContentView: View {
    var body: some View {
        // статические элемементы
        /*List {
            MusicRow(name: "Rock")
            MusicRow(name: "Rap")
            MusicRow(name: "Classic")
        }*/
         // динамические элементы
        /*let first = Restaurant(name: "FirstRestaurant")
        let second = Restaurant(name: "SecondRestaurant")
        let third = Restaurant(name: "ThirdRestaurant")
        let restaurants = [first, second, third]
        
        return List(restaurants) {RestaurantRow(restaurant: $0)
        }*/
        List {
            Section(header: Text("Important tasks"), footer: Text("End")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            } .listRowBackground(Color.yellow)
        } .listStyle(GroupedListStyle())
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
