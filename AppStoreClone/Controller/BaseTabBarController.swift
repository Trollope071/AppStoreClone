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
        
        viewControllers = [
            createNavController(viewController: TodayController(), title: "Сегодня", imageName: "today_icon"),
            createNavController(viewController: AppsPageController(), title: "Приложения", imageName: "apps"),
            createNavController(viewController: AppsSearchController(), title: "Поиск", imageName: "search")
        ]
        
    }
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
}
