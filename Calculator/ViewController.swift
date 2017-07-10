//
//  ViewController.swift
//  Calculator
//
//  Created by luanreis on 7/9/17.
//  Copyright © 2017 Luan Reis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!

    var userIsInMiddleOfTyping = false

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!

        if userIsInMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInMiddleOfTyping = true
        }
    }

    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                display.text = String(Double.pi)
            case "√":
                let operand = Double(display.text!)!
                display.text = String(sqrt(operand))
            default:
                break
            }
        }
    }
}
