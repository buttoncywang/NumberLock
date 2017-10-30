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
    // Make a Random number between 1 to 100
    var answer=GKRandomSource.sharedRandom().nextInt(upperBound: 100)+1
    var maxNumber=100,minNumber=1
    
    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeAGuess(_ sender: Any) {
        print(answer)
        let inputText=inputTextField.text!
        let inputNumber=Int(inputText)
        inputTextField.text=""
        if inputNumber==nil{
            //Wrong Input
            massageLabel.text="Wrong Input!! Guess a number between \(minNumber) to \(maxNumber)."
        }
        else{
            //Input Okay
            if inputNumber!  > maxNumber{
                massageLabel.text="Too large !! Guess a number between \(minNumber) to \(maxNumber)."
            }
            else if inputNumber! < minNumber{
                massageLabel.text="Too small !! Guess a number between \(minNumber) to \(maxNumber)."
            }
            else if inputNumber! == answer{
                massageLabel.text="You're right."
            }
            else{
                //Check Answer
                massageLabel.text="You're wrong!! Try again."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //push the keyboard up
        inputTextField.becomeFirstResponder()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

