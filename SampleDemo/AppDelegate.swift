//
//  AppDelegate.swift
//  SampleDemo
//
//  Created by Atlas on 19/07/20.
//  Copyright © 2020 Atlas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        window?.rootViewController = viewController
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

