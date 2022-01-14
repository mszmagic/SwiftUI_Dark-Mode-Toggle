//
//  ConfigView.swift
//  SwiftUI-Toggle-DarkMode
//
//  Created by Shunzhe on 2022/01/11.
//

import SwiftUI

struct ConfigView: View {
    
    @AppStorage(wrappedValue: 0, "appearanceMode") var appearanceMode
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Appearance setting", selection: $appearanceMode) {
                    Text("Follow system")
                        .tag(0)
                    Text("Dark mode")
                        .tag(1)
                    Text("Light mode")
                        .tag(2)
                }
            }
        }
    }
    
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}
