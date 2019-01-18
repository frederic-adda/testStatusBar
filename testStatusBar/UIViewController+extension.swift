//
//  UIViewController+extension.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 18/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

// https://www.swiftbysundell.com/basics/child-view-controllers

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func remove() {
        // Just to be safe, we check that this view controller
        // is actually added to a parent before removing it.
        guard parent != nil else {
            return
        }

        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
