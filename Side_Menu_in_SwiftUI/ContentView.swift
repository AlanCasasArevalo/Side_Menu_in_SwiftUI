//
//  ContentView.swift
//  Side_Menu_in_SwiftUI
//
//  Created by Alan Casas on 15/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                Text("Hola mundo")
                    .padding()
            }
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(.black)
            }))
            .navigationTitle("Home")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
