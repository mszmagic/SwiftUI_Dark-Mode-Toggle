//
//  ContentView.swift
//  SwiftUI-Toggle-DarkMode
//
//  Created by Shunzhe on 2022/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Text("Testing for switching dark mode")
                NavigationLink("View 1") {
                    Text("View 1")
                }
                NavigationLink("View 2") {
                    Text("View 2")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
