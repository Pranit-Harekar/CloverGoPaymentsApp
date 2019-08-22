//
//  ViewController.swift
//  CloverGoPaymentsApp
//
//  Created by Pranit Harekar on 8/22/19.
//  Copyright © 2019 Pranit Harekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var appDelegate: AppDelegate? {
        return (UIApplication.shared.delegate as? AppDelegate)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onConnect(_ sender: Any) {
        appDelegate?.connect()
    }
    
    @IBAction func onDisconnect(_ sender: Any) {
    }
    
    
}

