//
//  ViewController.swift
//  SnowCalls
//
//  Created by Doggett, Scott on 2019-11-27.
//  Copyright © 2019 Doggett, Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var messageInput: UITextView!
    
    @IBOutlet weak var messageOutput: UITextView!
    
    var numberOfCharacters = 0
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: Any) {
        
        // Convert input to string
        guard let messageInput = messageInput.text, messageInput.count != 0 else {
            messageOutput.text = "Please enter a phone number to convert"
            return
        }
        
        // Create empty sting - will become the out
        var outputString = ""
        
        for singleCharacter in messageInput{
            
            switch singleCharacter.lowercased() {
            case "0":
                outputString += "0"
            case "1":
                outputString += "1"
            case "2","a","b","c":
                outputString += "2"
            case "3","d","e","f":
                outputString += "3"
            case "4","g","h","i":
                outputString += "4"
            case "5","j","k","l":
                outputString += "5"
            case "6","m","n","o":
                outputString += "6"
            case "7","p","q","r","s":
                outputString += "7"
            case "8","t","u","v":
                outputString += "8"
            case "9","w","x","y","z":
                outputString += "9"
            default:
                outputString += ""
            }
            
            if outputString.count == 3 || outputString.count == 7 {
                outputString += "-"
            }


        }
        
        messageOutput.text = outputString
    }
    


}

