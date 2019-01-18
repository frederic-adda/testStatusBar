//
//  InitialViewController.swift
//  testStatusBar
//
//  Created by Frédéric ADDA on 17/01/2019.
//  Copyright © 2019 Frédéric ADDA. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    /// Defines if this navigation controller is embedded in another view controller
    var isEmbedded = false

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setLightNavigationBar()
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if isEmbedded {
            textLabel.text = """
            This view controller is the rootViewController of a navigationController, which itself has been embedded in a "base" view controller.

            In the base view controller, the childForStatusBarStyle has NOT been defined, neither the preferredStatusBarStyle. Therefore, the app will go down the view controller hierarchy to find a view controller that has either a childForStatusBarStyle or a preferredStatusBarStyle.

            In the embedded navigation controller, the topViewController is defined as the "childForStatusBarStyle".
            Its preferredStatusBarStyle is .default, to match the light navigationBar.

            Tap on the "Present" button to present modally a new view controller.
            """
        } else {
            // Get the text from the storyboard
        }
    }
}

