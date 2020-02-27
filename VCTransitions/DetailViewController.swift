//
//  DetailViewController.swift
//  VCTransitions
//
//  Copyright © 2020 Julien PIERRE-LOUIS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let data = data {
            let ac = UIAlertController(title: "Data received", message: data, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true)
        }
    }
}

