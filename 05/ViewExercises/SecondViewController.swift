//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */

        
        
        
        let navBar = self.navigationController?.navigationBar.frame
        let toolBar = self.navigationController?.toolbar.frame
        
        var blueView1 = UIView(frame: CGRect(x: 0, y:CGRectGetMaxY(navBar!), width: 20, height: 20))
        blueView1.backgroundColor = UIColor.blueColor()
        blueView1.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueView1)
        
        var blueView2 = UIView(frame: CGRect(x:300, y:CGRectGetMaxY(navBar!), width: 20, height: 20))
        blueView2.backgroundColor = UIColor.blueColor()
        blueView2.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueView2)
        
        
        var blueView3 = UIView(frame: CGRect(x:0, y:exerciseView.frame.height - CGRectGetHeight(toolBar!) - 20, width: 20, height: 20))
        blueView3.backgroundColor = UIColor.blueColor()
        blueView3.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueView3)
        
        var blueView4 = UIView(frame: CGRect(x:300, y:exerciseView.frame.height - CGRectGetHeight(toolBar!) - 20, width: 20, height: 20))
        blueView4.backgroundColor = UIColor.blueColor()
        blueView4.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueView4)
        
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
