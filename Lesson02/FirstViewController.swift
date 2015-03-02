//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
  
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var ageLawLabel: UILabel!
    @IBOutlet weak var ageLawLabelSingle: UILabel!

    @IBAction func buttonPressed(sender: AnyObject) {

        let name = nameField.text
        let age = ageField.text
        let welcomeMessage = sayHelloTo(name, age:age)
        messageLabel.text = welcomeMessage
        if(name.isEmpty) {messageLabel.text = "Hello World"}
        if(age > "0" && age < "16") {ageLawLabel.text = "Ah, to be young again."}
        if(age >= "16" && age < "18") {
            ageLawLabel.text = "You can drive 🚗"
            ageLawLabelSingle.text = "You can drive 🚗"
        }
    
        if(age >= "18" && age < "21") {
            ageLawLabel.text = "You can vote 👍 and drive 🚗"
            ageLawLabelSingle.text = "You can vote 👍 "
        }
        if(age >= "21") {
            ageLawLabel.text = "You can drink 🍸, vote 👍 and drive 🚗 (but not at the same time!)"
            ageLawLabelSingle.text = "You can drink 🍸"
        }
      
    }
   
    
    func sayHelloTo(name: String, age: String) -> String {
        return "Hello \(name), you are \(age) years old!"
    }
    
    
    
   
    
    
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
}
