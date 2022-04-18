//
//  msgFirebaseApp.swift
//  msgFirebase
//
//  Created by Fernando Abdalla on 15/04/22.
//

import SwiftUI
import Firebase

@main
struct msgFirebaseApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
