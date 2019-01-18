//
//  LonelyViewController.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 18/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

class LonelyViewController: UIViewController {

    var embeddedVC: UIViewController? {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override var childForStatusBarStyle: UIViewController? {
        return embeddedVC
    }

    @IBAction func embed(_ sender: UIButton) {
        guard let embeddedVC = storyboard?.instantiateViewController(withIdentifier: "EmbeddedViewController") else { return }

        add(embeddedVC)

        // Update the child for statusBarStyle
        self.embeddedVC = embeddedVC
    }

    func removeChild(_ child: UIViewController) {

        // Update the child for statusBarStyle
        self.embeddedVC = nil

        child.remove()
    }
}
