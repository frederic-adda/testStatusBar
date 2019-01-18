//
//  EmbeddedViewController.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 18/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

class EmbeddedViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    @IBAction func removeEmbedded(_ sender: UIButton) {

        (parent as? LonelyViewController)?.removeChild(self)
    }
}
