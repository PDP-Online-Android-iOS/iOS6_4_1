//
//  ContentView.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 02/12/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        print(UsersDefaults.loadUser())
        var user = User(firstname: "Ogabek", lastname: "Matyakubov", email: "ogabekdev@gmail.com", phone: "+998 93 203 73 13", address: "Khorezm")
        UsersDefaults.saveUser(user: user)
        print(UsersDefaults.loadUser())
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
