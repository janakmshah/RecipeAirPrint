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
        
        let nutrition = """
        <hr>
        <h3>Nutrition</h3>
        <p>Servings: 6</br>
            Calories: 300 per serving</br>
            Net Carbs: 4g per serving</br>
            Fat: 8g per serving</br>
            Protein: 12g per serving
        </p>
        """
        
        RecipeAirPrint.airPrint(name: "Recipe name", description: "Recipe description", ingredients: ["1 ingredient", "2 ingredient"], method: ["Method", "Blah blah"], footnoteHTML: nutrition)
    }

}

