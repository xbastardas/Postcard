//
//  ViewController.swift
//  Postcard
//
//  Created by xavier bastardas on 15/09/14.
//  Copyright (c) 2014 xavier bastardas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
   
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will evaluate when we press the button
        // Adding a Comment here to test
        
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle ("Mail Sent", forState: UIControlState.Normal)

    }

}

