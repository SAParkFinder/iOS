//
//  AppDelegate.swift
//  FirebaseAuthentication
//
//  Created by Leonard Box on 5/24/21.
//

import Foundation
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
        ) -> Bool {
        
            FirebaseApp.configure()
        
            return true
        }
    
    func application(
            _ application: UIApplication,
            open url: URL,
            options: [UIApplication.OpenURLOptionsKey : Any]
        ) -> Bool {

            return true
        }
}
