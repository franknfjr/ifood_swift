//
//  BaseTabBarController.swift
//  Ifood
//
//  Created by Frank Ferreira on 08/01/20.
//  Copyright © 2020 Frank Ferreira. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeViewController = UIViewController()
        let searchViewController = UIViewController()
        let orderViewController = UIViewController()
        let profileViewController = UIViewController()
        
        let homeNavController = UINavigationController(rootViewController: homeViewController)
        let searchNavController = UINavigationController(rootViewController: searchViewController)
        let orderNavController = UINavigationController(rootViewController: orderViewController)
        let profileNavController = UINavigationController(rootViewController: profileViewController)
        
        homeViewController.view.backgroundColor = .white
        homeViewController.navigationItem.title = "Home"
        homeNavController.tabBarItem.title = "Home"
        homeNavController.tabBarItem.image = #imageLiteral(resourceName: "home")
        homeNavController.navigationBar.prefersLargeTitles = true
        
        searchViewController.view.backgroundColor = .white
        searchViewController.navigationItem.title = "Search"
        searchNavController.tabBarItem.title = "Search"
        searchNavController.tabBarItem.image = #imageLiteral(resourceName: "search")
        searchNavController.navigationBar.prefersLargeTitles = true
        
        orderViewController.view.backgroundColor = .white
        orderViewController.navigationItem.title = "Order"
        orderNavController.tabBarItem.title = "Order"
        orderNavController.tabBarItem.image = #imageLiteral(resourceName: "ribbon")
        orderNavController.navigationBar.prefersLargeTitles = true
        
        profileViewController.view.backgroundColor = .white
        profileViewController.navigationItem.title = "Profile"
        profileNavController.tabBarItem.title = "Profile"
        profileNavController.tabBarItem.image = #imageLiteral(resourceName: "profile_selected")
        profileNavController.navigationBar.prefersLargeTitles = true
        
        tabBar.tintColor = .black
        
        viewControllers = [
        homeNavController,
        searchNavController,
        orderNavController,
        profileNavController
        ]
    }
}
