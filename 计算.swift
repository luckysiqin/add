//
//  计算.swift
//  add
//
//  Created by 20131105804 on 16/3/24.
//  Copyright © 2016年 20131105804. All rights reserved.
//

import Foundation

struct 计算{
    private var 当前算法:算法＝ .未选择
    
    mutating  func 设置当前算法（临时:算法）｛
       当前算法 ＝ 临时
    ｝
    func 读取当前算法() -> 算法｛
       return  当前算法
    ｝
    enum  算法｛
      case 加法
      case 减法
     case 乘法
    case 除法
    ｝
    
    func 求结果（#操作数 操作数: Double）
}