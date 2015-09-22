//
//  TestResposeOption.swift
//  BabyNoggin
//
//  Created by Rose on 22/09/15.
//  Copyright (c) 2015 ileaf4. All rights reserved.
//

import UIKit

class TestResposeOption: UIViewController {
    @IBOutlet weak var rollOverButton: UIButton?
    @IBOutlet weak var unableToLiftButton: UIButton?
    @IBOutlet weak var moveArmsButton: UIButton?
    @IBOutlet weak var notmoveArmsButton: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()

       rollOverButton?.layer.cornerRadius=10
        unableToLiftButton?.layer.cornerRadius=10
        moveArmsButton?.layer.cornerRadius=10
        notmoveArmsButton?.layer.cornerRadius=10
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func back(sender:UIButton){
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
         let result = segue.destinationViewController as! ResultController
        println(segue.identifier)
        if segue.identifier == "sucess" {
            result.identify=true
        }else{
            result.identify=false
        }
    }


    
    

}
