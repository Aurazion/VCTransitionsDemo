//
//  HomeViewController.swift
//  VCTransitions
//
//  Copyright © 2020 Julien PIERRE-LOUIS. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func presentButtonAction(_ sender: Any) {
        let detailViewController = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailViewController.modalPresentationStyle = .automatic
        present(detailViewController, animated: true)
    }
    
    @IBAction func presentNavControllerButtonAction(_ sender: Any) {
        let navigationController = UIStoryboard(name: "Push", bundle: nil).instantiateViewController(identifier: "NavigationController") as! UINavigationController
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true)
    }
    
    @IBAction func aboutButtonAction(_ sender: Any) {
        let aboutViewController = self.storyboard!.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
        present(aboutViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailVCSegue",
            let target = segue.destination as? DetailViewController {
            target.data = "Hello Swift Paris Junior!"
        }
    }
}

