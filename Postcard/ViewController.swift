//
//  ViewController.swift
//  Postcard
//
//  Created by Jeremy Power on 19/03/2015.
//  Copyright (c) 2015 Deakin University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
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
        messageLabel.hidden = false;
        nameLabel.hidden = false;
        
        messageLabel.text = enterMessageTextField.text;
        nameLabel.text = enterNameTextField.text;
        
        messageLabel.textColor = UIColor.redColor();
        nameLabel.textColor = UIColor.blueColor();
        
        enterMessageTextField.text = "";
        enterNameTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        // change button title on submit
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
    }

}