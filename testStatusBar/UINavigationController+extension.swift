//
//  UINavigationController+extension.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 17/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

extension UINavigationController {

    override open var childForStatusBarStyle: UIViewController? {
        return topViewController
    }

    func setLightNavigationBar() {
        navigationBar.barTintColor = .white
        navigationBar.tintColor = .darkGray
        // FIXME: This does not work on the inital VC when the pushed VC is popped 😕
        // Maybe its title is a NSAttributedString (not NSMutableAttributedString)
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.darkGray]
    }

    func setDarkNavigationBar() {
        navigationBar.barTintColor = .blue
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}
