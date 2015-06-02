//
//  ViewController.swift
//  DesignP
//
//  Created by Loi Wu on 6/2/15.
//  Copyright (c) 2015 Loi Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalAbilityLabel: UILabel!
    
    var ability = [
    ("Swift", "multi-paradigm, compiled", "Programming Language", 1.0, 0),
    ("Objective-C", "general-purpose, object-oriented", "Programming Language", 1.0, 0)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayAbilityTotal()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayAbilityTotal() {
        let abilityTotal = ability.reduce(0, combine: {(total, ability) -> Int in return total + ability.4})
        totalAbilityLabel.text = "\(abilityTotal) points in Ability";
    }


}

