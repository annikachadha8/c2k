//
//  AppDelegate.swift
//  Kindergarten
//
//  Created by Sandeep Vinay on 04/09/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        setupRootViewController()
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

    //MARK: - Other
    
    private func setupRootViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()
//        let colorThemeService = ColorThemeWebService()
//        colorThemeService.colorThemeApi()
        navigationController.navigationBar.tintColor = UIColor.black
        navigationController.navigationBar.barTintColor = UIColor.white
        let homeViewController = HomeViewController()
        navigationController.viewControllers = [homeViewController]
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

}

