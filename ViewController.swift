//
//  ViewController.swift
//  add
//
//  Created by 20131105804 on 16/3/17.
//  Copyright © 2016年 20131105804. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Calculator = calculation()
    var Displaycache = ""
    var cache = 0.0
    var cache2:Double?
    
    @IBOutlet weak var screen: UITextField!
    
    @IBAction func number9(sender: AnyObject) {
        click("9")
    }
    @IBAction func number8(sender: AnyObject) {
        click("8")
    }
    @IBAction func number7(sender: AnyObject) {
        click("7")
    }
    @IBAction func number6(sender: AnyObject) {
        click("6")
    }
    @IBAction func number5(sender: AnyObject) {
        click("5")
    }
    @IBAction func number4(sender: AnyObject) {
        click("4")
    }
    @IBAction func number3(sender: AnyObject) {
        click("3")
    }
    @IBAction func number2(sender: AnyObject) {
        click("2")
    }
    @IBAction func number1(sender: AnyObject) {
        click("1")
    }
    @IBAction func number0(sender: AnyObject) {
        if screen.text == "0"
        {
            screen.text = screen.text! + ""
        }
        else {
            click("0")
        }
    }
    @IBAction func point(sender: AnyObject) {
        click(".")
    }
    @IBAction func plussign(sender: AnyObject) {
        if Calculator.Readthecurrentalgorithm() != .addition {//如果点击加之前是别的算法就执行这里的代码块
            evaluation()
            Calculator.Setcurrentalgorithm(.addition)
            return //用return语句让函数提前出栈
        }
        Calculator.Setcurrentalgorithm(.addition)
        evaluation()
    }
    @IBAction func minussign(sender: AnyObject) {
        if Calculator.Readthecurrentalgorithm() != .subtraction {
            evaluation()
            Calculator.Setcurrentalgorithm(.subtraction)
            return
        }
        Calculator.Setcurrentalgorithm(.subtraction)
        evaluation()
    }
    @IBAction func multiplicationsign(sender: AnyObject) {
        if Calculator.Readthecurrentalgorithm() != .multiplication {
            evaluation()
            Calculator.Setcurrentalgorithm(.multiplication)
            return
        }
        Calculator.Setcurrentalgorithm(.multiplication)
        evaluation()
    }
    @IBAction func divisionsign(sender: AnyObject) {
        if Calculator.Readthecurrentalgorithm() != .division {
            evaluation()
            Calculator.Setcurrentalgorithm(.division)
            return
        }
        Calculator.Setcurrentalgorithm(.division)
        evaluation()
    }
    @IBAction func Resetcurrent(sender: AnyObject) {
        Pointcount = 0
        Displaycache = ""
        screen.text = ""
    }

    @IBAction func equalsign(sender: AnyObject) {
        evaluation()
    }
    @IBAction func Resetall(sender: AnyObject) {
        Pointcount = 0 //同理，清空重置什么的，都要加上这个
        Displaycache = ""
        cache = 0.0
        cache2 = nil
        Calculator.Setcurrentalgorithm(.Nochoice)
        screen.text = ""
    }

    var Pointcount = 0;
    func click(number:String) {
        if number == "." {
            Pointcount++
        }
        if number == "." && Pointcount > 1 {
            return
        }
        Displaycache += number
        screen.text = Displaycache
    }
    
    func evaluation() {
        Pointcount = 0
        if !Displaycache.isEmpty {
            let temporary = Displaycache as NSString
            cache = temporary.doubleValue
            Displaycache = ""
        }
        let temporary = cache
        var result = ""
        
        if  let Lastnumber = cache2 {
            
            result = Calculator.Resultseeking(Operationnumber: Lastnumber, Operandoperand: temporary)
            screen.text = result
            let temporary2 = result as NSString
            cache2 = temporary2.doubleValue
            
        } else {
            cache2 = cache
            cache = 0.0
        }
    }
}

    

    
