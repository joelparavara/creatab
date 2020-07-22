//
//  ViewController.swift
//  creatab
//
//  Created by Joel Thomson on 7/21/20.
//  Copyright © 2020 Techcrus Labs. All rights reserved.
//

import UIKit

class HomeVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor.white
        
        tabBarController?.tabBar.barTintColor = UIColor.blue
        
        tabBar.barTintColor = UIColor.white
        
        setupTabBar()
        
        view.backgroundColor = .cyan
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //validateAuth()
    }
    
    public func validateAuth() {
//        if Auth.auth().currentUser == nil {
//            let vc = LoginRegisterViewController()
//            let nav = UINavigationController(rootViewController: vc)
//            present(nav, animated: true)
//        }
    }
    
    func setupTabBar() {
        
        let homeTabBar = UINavigationController(rootViewController: LoginRegisterVC())
        homeTabBar.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let secondTabBar = UINavigationController(rootViewController: SecondVC())
        secondTabBar.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        
        let thirdTabBar = UINavigationController(rootViewController: ThirdVC())
        thirdTabBar.tabBarItem = UITabBarItem(tabBarSystemItem: .more , tag: 2)
        
        let fourthTabBar = UINavigationController(rootViewController: FourthVC())
        fourthTabBar.tabBarItem = UITabBarItem(tabBarSystemItem: .mostRecent , tag: 3)
        
        viewControllers = [homeTabBar, secondTabBar, thirdTabBar, fourthTabBar]
        
    }

    

}

