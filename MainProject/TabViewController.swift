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

        // Do any additional setup after loading the view.
        var controllers = viewControllers

        let aController = ProjectA.MyViewController.create()
        aController.tabBarItem = UITabBarItem(title: "ProjectA", image: #imageLiteral(resourceName: "first"), tag: 3)
        controllers?.append(aController)

        let bController = ProjectB.ViewController.create()
        bController.tabBarItem = UITabBarItem(title: "ProjectB", image: #imageLiteral(resourceName: "second"), tag: 4)
        controllers?.append(bController)

        viewControllers = controllers
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
