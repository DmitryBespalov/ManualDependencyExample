//
//  ViewController.swift
//  ProjectB
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    public static func create() -> ViewController {
        let bundle = Bundle(for: ViewController.self)
        let board = UIStoryboard(name: "ProjectBMain", bundle: bundle)
        let controller = board.instantiateInitialViewController() as! ViewController
        return controller
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

