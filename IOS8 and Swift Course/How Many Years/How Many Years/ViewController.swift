//
//  ViewController.swift
//  How Many Years
//
//  Created by Jack MacVicar on 7/31/15.
//  Copyright (c) 2015 Jack MacVicar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuess: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnCheck(sender: AnyObject) {
        
        println(userGuess.text)
        
        var randomNumber = arc4random_uniform(10)
        
        var guess = userGuess.text.toInt()
        
        if guess == Int(randomNumber) {
            
            lblResult.text = "You Guessed Right!"
            
        }else {
            
            lblResult.text = "You Guessed Wrong!"
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

