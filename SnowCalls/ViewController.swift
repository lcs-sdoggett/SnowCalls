//
//  ViewController.swift
//  SnowCalls
//
//  Created by Doggett, Scott on 2019-11-27.
//  Copyright © 2019 Doggett, Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageInput: UITextView!
    
    @IBOutlet weak var messageOutput: UITextView!
    
    //MARK: Properties
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: Any) {
        
        guard let messageInput = messageInput.text, messageInput.count != 0 else {
            messageOutput.text = "Please enter a phone number to convert"
            return
        }
        
        
        
        
        
    }
    


}

