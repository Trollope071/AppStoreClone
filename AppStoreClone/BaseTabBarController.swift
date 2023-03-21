//
//  BaseTabBarController.swift
//  AppStoreClone
//
//  Created by Савва Варма on 21.03.2023.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tabBar.backgroundColor = .white
        
        let todayController = UIViewController()
        todayController.navigationItem.title = "Today"
        let todayNavController = UINavigationController(rootViewController: todayController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.tabBarItem.image = UIImage(named: "today_icon")
        todayNavController.navigationBar.prefersLargeTitles = true
        
        
        let appsViewController = UIViewController()
        appsViewController.navigationItem.title = "Apps"
        let appsNavController = UINavigationController(rootViewController: appsViewController)
        appsNavController.tabBarItem.title = "Apps"
        appsNavController.tabBarItem.image = UIImage(named: "apps")
        appsNavController.navigationBar.prefersLargeTitles = true
        
        
        let searchViewController = UIViewController()
        searchViewController.navigationItem.title = "Search"
        let searchNavController = UINavigationController(rootViewController: searchViewController)
        searchNavController.tabBarItem.title = "Search"
        searchNavController.tabBarItem.image = UIImage(named: "search")
        searchNavController.navigationBar.prefersLargeTitles = true
    
        
        viewControllers = [
            todayNavController,
            appsNavController,
            searchNavController
        ]
        
        
    }
    
    
}
