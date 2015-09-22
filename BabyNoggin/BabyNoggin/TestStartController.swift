//
//  TestStartController.swift
//  BabyNoggin
//
//  Created by Rose on 22/09/15.
//  Copyright (c) 2015 ileaf4. All rights reserved.
//

import UIKit

class TestStartController: UIViewController {
    @IBOutlet weak var nextStep_Button: UIButton?
    @IBOutlet weak var back: UIButton?
    @IBOutlet weak var curvedImage: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        /*￼
        * Setting Backgroung image for the container view as its background color from singleton class.
        */
        var backgroundColor:UIColor?=singletonClass.sharedInstance.Common_BackgroungColor()
        self.view.backgroundColor=backgroundColor
        
        curvedImage?.layer.cornerRadius=10
        nextStep_Button?.layer.cornerRadius=10;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func back(sender:UIButton){
        self.navigationController?.popViewControllerAnimated(true)
    }

}
