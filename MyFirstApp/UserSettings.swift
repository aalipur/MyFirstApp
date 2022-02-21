//
//  UserSettings.swift
//  MyFirstApp
//
//  Created by Анатолий Алипур on 21.02.2022.
//

import SwiftUI

class UserSettings: ObservableObject {
    
    @Published var score = 0
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
