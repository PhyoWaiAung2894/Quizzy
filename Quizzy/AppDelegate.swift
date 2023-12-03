//
//  AppDelegate.swift
//  Quizzy
//
//  Created by PhyoWai Aung on 12/2/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Create a UIWindow instance
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set rootViewController for the window
        let viewController = ViewController() // Instantiate your initial ViewController
        let navigationController = UINavigationController(rootViewController: viewController) // Embed it in a navigation controller if needed
        
        window?.rootViewController = navigationController // Set the navigationController as rootViewController
        
        // Make the window visible
        window?.makeKeyAndVisible()
        
        return true
    }
}

