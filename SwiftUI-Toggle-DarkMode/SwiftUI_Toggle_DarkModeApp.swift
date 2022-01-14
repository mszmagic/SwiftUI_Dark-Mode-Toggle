//
//  SwiftUI_Toggle_DarkModeApp.swift
//  SwiftUI-Toggle-DarkMode
//
//  Created by Shunzhe on 2022/01/11.
//

import SwiftUI

@main
struct SwiftUI_Toggle_DarkModeApp: App {
    
    @AppStorage(wrappedValue: 0, "appearanceMode") var appearanceMode
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                ContentView()
                    .tabItem {
                        Image(systemName: "square.text.square")
                        Text("View")
                    }
                
                ConfigView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Config")
                    }
                
            }
            .applyAppearenceSetting(DarkModeSetting(rawValue: self.appearanceMode) ?? .followSystem)
        }
    }
    
}

extension View {
    @ViewBuilder
    func applyAppearenceSetting(_ setting: DarkModeSetting) -> some View {
        switch setting {
        case .followSystem:
            self
                .preferredColorScheme(.none)
        case .darkMode:
            self
                .preferredColorScheme(.dark)
        case .lightMode:
            self
                .preferredColorScheme(.light)
        }
    }
}
