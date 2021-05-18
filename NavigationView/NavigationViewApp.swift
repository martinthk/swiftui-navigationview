//
//  NavigationViewApp.swift
//  NavigationView
//
//  Created by Martin Tom on 29/4/2021.
//

import SwiftUI

@main
struct NavigationViewApp: App {
    
    init(){
        //UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.red]
    }
    
    var body: some Scene {
        WindowGroup {
            RedOneView()
        }
    }
}
