//
//  ViewController.swift
//  ProjectC
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

import UIKit

public class OtherViewController: UIViewController {

    public static func create() -> OtherViewController {
        let bundle = Bundle(for: OtherViewController.self)
        let board = UIStoryboard(name: "ProjectCMain", bundle: bundle)
        let controller = board.instantiateInitialViewController() as! OtherViewController
        return controller
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        let m = ModelMapper()
        m.example()
    }


}

