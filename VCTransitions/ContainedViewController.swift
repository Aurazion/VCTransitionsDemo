//
//  ContainedViewController.swift
//  VCTransitions
//
//  Copyright © 2020 Julien PIERRE-LOUIS. All rights reserved.
//

import UIKit

class ContainedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ContainedViewController"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushButtonAction(_ sender: Any) {
        if let pushedViewController = self.storyboard?.instantiateViewController(withIdentifier: "PushedViewController") as? PushedViewController {
            self.navigationController?.pushViewController(pushedViewController, animated: true)
        }
    }
    
    @IBAction func dismissButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
