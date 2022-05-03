//
//  ViewController.swift
//  SwiftUIInUIKit
//
//  Created by airtel on 02/05/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    let hostingFile = UIHostingController(rootView: MainContentView())

    override func viewDidLoad() {
        super.viewDidLoad()

        addChild(hostingFile)
        self.view.addSubview(hostingFile.view)
        hostingFile.didMove(toParent: self)
        setupConstraintsToHostingController()

    }

    // Set constaints to SwiftUI file (MainContentView)
    fileprivate func setupConstraintsToHostingController() {
        hostingFile.view.translatesAutoresizingMaskIntoConstraints = false
        hostingFile.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        hostingFile.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        hostingFile.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        hostingFile.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }



}

