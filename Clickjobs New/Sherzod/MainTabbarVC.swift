//
//  MainTabbarVC.swift
//  ClickJobs_NewProject
//
//  Created by Sherzod on 25/03/22.
//

import UIKit

class MainTabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabbar()
        self.tabBar.unselectedItemTintColor = tabbarItemColor
        self.tabBar.layer.borderWidth = 0.5
        self.tabBar.layer.borderColor = UIColor.systemGray3.cgColor
        
           
    }
    
    func setupTabbar() {
        
        let employeesVC = UINavigationController(rootViewController: EmployessVC(nibName: "EmployessVC", bundle: nil))
        let employessBar = UITabBarItem(title: "Employess", image: UIImage(systemName: "house.fill"), selectedImage: nil)
        employeesVC.tabBarItem = employessBar
        
        let vacancyVC = UINavigationController(rootViewController: VacancyVC(nibName: "VacancyVC", bundle: nil))
        let vacancyBar = UITabBarItem(title: "Vacancy", image: UIImage(systemName: "plus"), selectedImage: nil)
        vacancyVC.tabBarItem = vacancyBar
        
        let profileVC = UINavigationController(rootViewController: ProfileVC(nibName: "ProfileVC", bundle: nil))
        let profileBar = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), selectedImage: nil)
        
        profileVC.tabBarItem = profileBar
        
        
        UITabBar.appearance().tintColor = redColor
        UITabBar.appearance().barTintColor = bodyColor
        
        
        self.viewControllers = [employeesVC, vacancyVC, profileVC]
    }

}


