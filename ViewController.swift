//
//  ViewController.swift
//  add
//
//  Created by 20131105804 on 16/3/17.
//  Copyright © 2016年 20131105804. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBAction func jisuan(sender: AnyObject) {
        var a:Double=0
        var b:Double=0
        var c:Double=0
        if(!x.text! .isEmpty){
            a=(x.text! as NSString).doubleValue
        }
        if(!y.text!.isEmpty){
            b=(y.text! as NSString).doubleValue
        }
        c=a+b
        z.text="\(c)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func one(sender: AnyObject) {
        x.text="1"
    }
    @IBAction func two(sender: AnyObject) {
        x.text="2"
    }
    @IBAction func three(sender: AnyObject) {
        x.text="3"
    }
    @IBAction func four(sender: AnyObject) {
          x.text="4"
    }
    @IBAction func five(sender: AnyObject) {
          x.text="5"
    }
    @IBAction func six(sender: AnyObject) {
          x.text="6"
    }
    @IBAction func seven(sender: AnyObject) {
          x.text="7"
    }
    @IBAction func eight(sender: AnyObject) {
          x.text="8"
    }
    @IBAction func nine(sender: AnyObject) {
          x.text="9"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
}