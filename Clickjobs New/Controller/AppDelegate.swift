//
//  AppDelegate.swift
//  Clickjobs New
//
//  Created by Mustafo Asqarov on 27/03/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        let walk = WalkVC(nibName: "WalkVC", bundle: nil)
        let vc = UINavigationController(rootViewController: walk)
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

  

}

