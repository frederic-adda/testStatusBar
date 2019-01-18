//
//  RootViewController.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 17/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var shoudCreateInitialInStoryboard = false

    private var navController: UINavigationController!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let navController = storyboard?.instantiateViewController(withIdentifier: "NavControllerForModal") as? UINavigationController,
            let initialVC = navController.viewControllers.first as? InitialViewController {
            initialVC.isEmbedded = true
            add(navController)
        }
    }
}
