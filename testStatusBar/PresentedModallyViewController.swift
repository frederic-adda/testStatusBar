//
//  PresentedModallyViewController.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 17/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

class PresentedModallyViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(close))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setDarkNavigationBar()
    }

    @objc private func close() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
