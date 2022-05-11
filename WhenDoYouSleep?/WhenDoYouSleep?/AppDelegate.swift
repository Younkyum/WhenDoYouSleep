//
//  AppDelegate.swift
//  WhenDoYouSleep?
//
//  Created by Jin younkyum on 2022/04/13.
//

import UIKit

let themeKey = "themeKey"
let initialKey = "initialKey"
let themes = [[UIColor(rgb: 0x334557), UIColor(rgb: 0x588195), UIColor(rgb: 0xeff0f2)],
              [UIColor(rgb: 0x748c70), UIColor(rgb: 0x455d3e), UIColor(rgb: 0xe8e7e3)],
              [UIColor(rgb: 0xbb937e), UIColor(rgb: 0x915549), UIColor(rgb: 0xececee)],
              [UIColor(rgb: 0x000000), UIColor(rgb: 0x505050), UIColor(rgb: 0xdcdcdc)],
              [UIColor(rgb: 0x6c5a72), UIColor(rgb: 0x9986b3), UIColor(rgb: 0xe0dbef)]]


@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        if !UserDefaults.standard.bool(forKey: initialKey) {
            let defaultSettings = [themeKey: 0] as [String: Int]
            UserDefaults.standard.register(defaults: defaultSettings)
            UserDefaults.standard.set(true, forKey: initialKey)
        }
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

