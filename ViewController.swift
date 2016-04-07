//
//  ViewController.swift
//  add
//
//  Created by 20131105804 on 16/3/17.
//  Copyright © 2016年 20131105804. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var 计算器 = 计算()
    var 显示缓存 =  " "
    var 缓存 = 0.0
    var 缓存2:Double?
    @IBOutlet weak var 屏幕: UITextField!
   
    @IBAction func 数字9(sender: AnyObject) {
        点按("9")
    }
    @IBAction func 数字8(sender: AnyObject) {
         点按("8")
    }
    @IBAction func 数字7(sender: AnyObject) {
         点按("7")
    }
    @IBAction func 数字6(sender: AnyObject) {
         点按("6")
    }
    @IBAction func 数字5(sender: AnyObject) {
         点按("5")
    }
    @IBAction func 数字4(sender: AnyObject) {
         点按("4")
    }
    @IBAction func 数字3(sender: AnyObject) {
         点按("3")
    }
    @IBAction func 数字2(sender: AnyObject) {
         点按("2")
    }
    @IBAction func 数字1(sender: AnyObject) {
         点按("1")
    }
    @IBAction func 数字0(sender: AnyObject) {
         点按("0")
    }
    @IBAction func 小数点(sender: AnyObject) {
         点按(".")
    }
    @IBAction func 算法加(sender: AnyObject) {
        计算器.设置当前算法(.加法)
        求值()
    }
    @IBAction func 算法减(sender: AnyObject) {
        计算器.设置当前算法(.减法)
        求值()
    }
    @IBAction func 算法乘(sender: AnyObject) {
        计算器.设置当前算法(.乘法)
        求值()
    }
    @IBAction func 算法除(sender: AnyObject) {
        计算器.设置当前算法(.除法)
        求值()
    }
    @IBAction func 重置当前(sender: AnyObject) {
    }
    @IBAction func 结果(sender: AnyObject) {
          求值()
    }
    func 点按(数字:String) {
        显示缓存 += 数字
        屏幕.text = 显示缓存
    }
    func 求值() {
        var 结果 = ""
        
        if !显示缓存.isEmpty {
            let 临时 = 显示缓存 as NSString
             缓存 =  临时.doubleValue
            显示缓存 = ""
        }
        let 临时 = 缓存
        
        if let 前一个数字 = 缓存2{
             结果 = 计算器.求结果(操作数: 前一个数字, 被操作数:临时)
            屏幕.text =  结果
            let 临 = 结果 as NSString
            缓存2 = 临.doubleValue
        }else{
           缓存2 = 缓存
            缓存 = 0.0
        }
    }
}

    

    
