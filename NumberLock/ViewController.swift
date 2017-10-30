//
//  ViewController.swift
//  NumberLock
//
//  Created by FoxLink SFC Team on 2017/10/30.
//  Copyright © 2017年 foxlink.sfc.team. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeAGuess(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //push the keyboard up
        inputTextField.becomeFirstResponder()
        // Make a Random number between 1 to 100
        var answer=GKRandomSource.sharedRandom().nextInt(upperBound: 100)+1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

