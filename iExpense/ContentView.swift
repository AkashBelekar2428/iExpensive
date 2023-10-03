//
//  ContentView.swift
//  iExpense
//
//  Created by Akash Belekar on 03/10/23.
//

import SwiftUI

class user: ObservableObject {
    @Published var firstName = "Akki"
    @Published var lastName = "Belekar"
}

struct ContentView: View {
    @StateObject var userData = user()
    
    var body: some View {
        VStack{
            Text("My profile Name is \(userData.firstName) \(userData.lastName)")
            
            TextField(
                "Enter Your Name", text: $userData.firstName)
            TextField("Enter Your Surname", text: $userData.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
