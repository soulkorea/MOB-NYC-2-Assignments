//
//  BioViewController.swift
//  Lesson01
//
//  Created by Benjamin Kim on 2/21/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class BioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

    @IBAction func backButtonPressed(sender: AnyObject) {
        // dismiss viewcontroller
        self.dismissViewControllerAnimated(true, completion: nil)
        
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