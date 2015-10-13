//
//  ViewController.swift
//  Dog Years
//
//  Created by Jack MacVicar on 5/20/15.
//  Copyright (c) 2015 Jack MacVicar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var lblCatsAge: UILabel!
    
    @IBAction func btnCalculate(sender: AnyObject) {
        
        var enteredAge = Int(age.text)
        
        if enteredAge != nil {
        
            var calculatedAge = enteredAge! * 7
        
            lblCatsAge.text = "Your dog is \(calculatedAge) years old"
            
        } else {
            
            lblCatsAge.text = "Pleas enter in a number!"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

