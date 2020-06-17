//
//  TabBarViewController.swift
//  TabBarController
//
//  Created by Jaedoo Ko on 2020/06/17.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        let vcs = [FirstViewController(), SecondViewController()]
        let items = [
            UITabBarItem(title: "first", image: #imageLiteral(resourceName: "home_black_3x"), selectedImage: #imageLiteral(resourceName: "home_black_3x")),
            UITabBarItem(title: "second", image: #imageLiteral(resourceName: "settings_black_3x"), selectedImage: #imageLiteral(resourceName: "settings_black_3x")),
        ]
        (0..<vcs.count).forEach { vcs[$0].tabBarItem = items[$0] }
        
        setViewControllers(vcs, animated: true)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
