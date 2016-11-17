//
//  ViewController.swift
//  ProjectB
//
//  Created by Dmitry Bespalov on 17/11/2016.
//  Copyright © 2016 Zalando. All rights reserved.
//

import UIKit
import ProjectC

public class ViewController: UIViewController {

    public static func create() -> ViewController {
        let bundle = Bundle(for: ViewController.self)
        let board = UIStoryboard(name: "ProjectBMain", bundle: bundle)
        let controller = board.instantiateInitialViewController() as! ViewController
        return controller
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        addButton()
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addButton() {
        let b = UIButton(type: .infoDark)
        b.addTarget(self, action: #selector(openC), for: .touchUpInside)
        b.center = view.center
        view.addSubview(b)
    }

    func openC() {
        let cController = ProjectC.OtherViewController.create()
        present(cController, animated: true, completion:  { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        })
    }

}

