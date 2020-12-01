//
//  ViewController.swift
//  RecipeAirPrint
//
//  Created by Janak Shah on 12/01/2020.
//  Copyright (c) 2020 Janak Shah. All rights reserved.
//

import UIKit
import RecipeAirPrint

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
        button.addTarget(self, action: #selector(printAction), for: .touchUpInside)

        button.setTitle("Test Print", for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 8
    }

    @objc func printAction() {
        RecipeAirPrint.airPrint("Test")
    }

}

