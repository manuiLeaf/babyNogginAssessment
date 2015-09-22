//
//  SingletonClass.swift
//  BabyNoggin
//
//  Created by Rose on 22/09/15.
//  Copyright (c) 2015 ileaf4. All rights reserved.
//


import Foundation
import UIKit

class singletonClass {
   
    init() {
        println("singletonClass");
    }
    
    class var sharedInstance: singletonClass {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: singletonClass? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = singletonClass()
        }
        return Static.instance!
    }
    
    func Common_BackgroungColor()->UIColor {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        UIGraphicsBeginImageContext(screenSize.size)
        UIImage(named: "BackGroundImage")?.drawInRect(screenSize)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return UIColor(patternImage: image)
        
    }
    
}