//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by luanreis on 7/10/17.
//  Copyright © 2017 Luan Reis. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    private var accumulator: Double?

    mutating func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            accumulator = Double.pi
        case "√":
            if let operand = accumulator {
                accumulator = sqrt(operand)
            }
        default:
            break
        }
    }

    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }

    var result: Double? {
        get {
            return accumulator
        }
    }

}
