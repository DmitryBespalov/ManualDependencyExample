//
//  TabViewController.swift
//  MainProject
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

import UIKit
import ProjectA

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let aController = ViewController.create()
        aController.tabBarItem = UITabBarItem(title: "ProjectA", image: #imageLiteral(resourceName: "first"), tag: 3)
        var controllers = viewControllers
        controllers?.append(aController)
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
