//
//  ResultController.swift
//  BabyNoggin
//
//  Created by Rose on 22/09/15.
//  Copyright (c) 2015 ileaf4. All rights reserved.
//

import UIKit

class ResultController: UIViewController {
    var identify:Bool!
    @IBOutlet var faildView:UIView?
    @IBOutlet var sucessView:UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.faildView?.backgroundColor=UIColor
        if (identify==true){
           self.faildView?.hidden=true
            self.sucessView?.hidden=false
        }else{
            self.faildView?.hidden=false
            self.sucessView?.hidden=true
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(sender:UIButton){
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func nextStep(sender:UIButton){
        self.navigationController?.popToRootViewControllerAnimated(true)
    
    }
    @IBAction func furtherInfo(sender:UIButton){
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func nextTest(sender:UIButton){
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
