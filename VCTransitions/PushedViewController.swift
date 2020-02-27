//
//  PushedViewController.swift
//  VCTransitions
//
//  Copyright © 2020 Julien PIERRE-LOUIS. All rights reserved.
//

import UIKit

class PushedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "PushedViewController"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
