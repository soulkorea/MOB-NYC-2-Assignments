//
//  DestinationVC.swift
//  Lesson03
//
//  Created by Benjamin Kim on 3/7/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit



class destinationVC: UIViewController {

    @IBAction func dismissButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        
        
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
        
//        if segue.identifier == "destinationVC" {
//            var destinationVC = segue.destinationViewController as ViewController
//        
//        }


    }
    
    
}


