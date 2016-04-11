//
//  计算.swift
//  add
//
//  Created by 20131105804 on 16/3/31.
//  Copyright © 2016年 20131105804. All rights reserved.
//

import Foundation

struct calculation {
    private var Currentalgorithm:algorithm = .Nochoice
    
    mutating func Setcurrentalgorithm(temporary:algorithm) {
        Currentalgorithm = temporary
    }
    
    func Readthecurrentalgorithm() -> algorithm {
        return Currentalgorithm
    }
    
    enum algorithm {
        case addition
        case subtraction
        case multiplication
        case division
        case Percent
        case Nochoice
    }
    
    func Resultseeking(Operationnumber Operationnumber:Double, Operandoperand:Double) ->String {
        var revert = ""
        switch Currentalgorithm {
        case .addition:
            revert = "\(Operationnumber + Operandoperand)"
        case .subtraction:
            revert = "\(Operationnumber - Operandoperand)"
        case .multiplication:
            revert = "\(Operationnumber * Operandoperand)"
        case .division where Operandoperand != 0 :
            revert = "\(Operationnumber / Operandoperand)"
        case .Percent:
            revert = "\(Operationnumber / 100)"
        case .Nochoice:
            revert = "错误：未选择算法"
        default:
            revert = "0 不能做被除数！"
            
        }
        return revert
    }
}