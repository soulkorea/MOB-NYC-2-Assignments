//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var determineEven: UILabel!
    
    
    @IBAction func calculateEven(sender: AnyObject) {
        let number : Int? = numberInput.text.toInt()
        if(number! % 2 == 0) {determineEven.text = "It's even"}
        else {determineEven.text = "Is Not Even"}
        
        
    }
    
    
    
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
