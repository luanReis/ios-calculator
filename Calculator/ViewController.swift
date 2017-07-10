//
//  ViewController.swift
//  Calculator
//
//  Created by luanreis on 7/9/17.
//  Copyright © 2017 Luan Reis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(digit) was touched!")
    }
}
