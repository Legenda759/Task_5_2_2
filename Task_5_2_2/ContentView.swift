//
//  ContentView.swift
//  Task_5_2_2
//
//  Created by Legenda_759 on 28/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack{
            VStack{
                Text("Email").frame(maxWidth: .infinity,alignment: .leading).padding(.horizontal)
                TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
                Text("Password").frame(maxWidth: .infinity,alignment: .leading).padding(.horizontal)
                TextField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            }
            VStack(spacing: 10){
                ProgressView().progressViewStyle(CircularProgressViewStyle())
                Text("Loading")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
