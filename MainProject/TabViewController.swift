//
//  TabViewController.swift
//  MainProject
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

import UIKit
import ProjectA
import ProjectB

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var controllers = viewControllers

        // When view controllers were named the same, it didn't build
        let aController = ProjectA.MyViewController.create()
        aController.tabBarItem = UITabBarItem(title: "ProjectA", image: #imageLiteral(resourceName: "first"), tag: 3)
        controllers?.append(aController)

        let bController = ProjectB.ViewController.create()
        bController.tabBarItem = UITabBarItem(title: "ProjectB", image: #imageLiteral(resourceName: "second"), tag: 4)
        controllers?.append(bController)

        viewControllers = controllers
    }

}
