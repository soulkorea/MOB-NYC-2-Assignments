//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var sum = 0
    
    @IBOutlet weak var numberEntered: UITextField!
    
    @IBOutlet weak var numberSum: UILabel!

    @IBAction func numberAdded(sender: AnyObject) {
        var number = numberEntered.text.toInt()
        
        if number != nil {
        
        sum += number!
        
        numberSum.text = String(sum)
        }
    }

}
    

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.

