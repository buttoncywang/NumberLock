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
    
    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeAGuess(_ sender: Any) {
        print(answer)
        let inputText=inputTextField.text!
        let inputNumber=Int(inputText)
        
        if inputNumber==nil{
            //Wrong Input
            print("Wrong Input")
        }
        else{
            //Input Okay
            if inputNumber!  > 100{
                print("Too large")
            }
            else if inputNumber! < 1{
                print("Too Small")
            }
            else{
                //Check Answer
                print("Check Answer")
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

