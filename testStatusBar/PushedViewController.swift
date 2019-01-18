//
//  PushedViewController.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 17/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

class PushedViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setDarkNavigationBar()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        navigationController?.setLightNavigationBar()
    }
}
