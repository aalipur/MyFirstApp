//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 13.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    @State private var showingAlert = false
    
    @State private var showingSheet = false
    
    var body: some View {
        /*Button("Show Alert") {
            self.showingAlert = true
        } .alert(isPresented: $showingAlert) {
            Alert(title: Text("Hello SwiftUI"), message: Text("Some detail message"), dismissButton: .default(Text("Ok")))
        }*/
        /*HStack {
            Button("Show 1") {
                self.showingAlert1 = true
            } .alert(isPresented: $showingAlert1) {
                Alert(title: Text("One"), message: nil, dismissButton: .cancel())
                }
            Button("Show 2") {
                self.showingAlert2 = true
            } .alert(isPresented: $showingAlert2) {
                Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
                }
        }*/
        /*Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        } .alert(isPresented: $showingAlert) {
            Alert(title: Text("Are you sure?"), message: Text("There is no way back"), primaryButton: .destructive(Text("Delete")) {
                print("Deleting...")
            }, secondaryButton: .cancel())
        }*/
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Action Sheets")
        } .confirmationDialog("", isPresented: $showingSheet) {
            /*ActionSheet(title: Text("What do you want to do?"), message: Text("There is only one choice..."), buttons: [.default(Text("Dismiss Action Sheet")), .cancel(), .destructive(Text("Delete"))])*/
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
