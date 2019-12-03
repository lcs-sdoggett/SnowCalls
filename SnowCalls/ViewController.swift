//
//  ViewController.swift
//  SnowCalls
//
//  Created by Doggett, Scott on 2019-11-27.
//  Copyright © 2019 Doggett, Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var messageInput: UITextView!
    @IBOutlet weak var messageOutput: UITextView!
    
    var numberOfCharacters = 0
    
    //MARK: Methods
    
    // This method runs ONCE after the first view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make this class be the delegate for the input text view
        messageInput.delegate = self
        
        // Give the focus to the input text view when the program begins
        messageInput.text = ""
        messageOutput.text = ""
        messageInput.becomeFirstResponder() // Set focus on input field
    }
    
    //MARK: Actions
    @IBAction func convert(_ sender: Any) {
        
        // Convert input to string
        guard let messageInput = messageInput.text, messageInput.count != 0 else {
            messageOutput.text = "Please enter a phone number to convert"
            return
        }
        
        // Reset message output
        messageOutput.text = ""
        
        // Split up the inputed string
        let phoneNumbers = messageInput.split(separator: "\n")
        
        for phoneNumber in phoneNumbers {
            
            // Create empty sting - will become the out
            var outputString = ""
            
            for singleCharacter in phoneNumber{
                
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
                case "-":
                    outputString += ""
                default:
                    outputString += ""
                }
                
                // Add a dash after 3 and 7 characters
                if outputString.count == 3 || outputString.count == 7 {
                    outputString += "-"
                }
                
                if outputString.count == 12 {
                    //End the loop
                    break
                }
                
            }
            
            messageOutput.text += outputString + "\n"
        }
    }
    
    // MARK: UIText View Delegate Methods
    
    // Called automatically when the contents of the text view are changed
    func textViewDidChange(_ textView: UITextView) {
        
        // Reset the output text view
        messageOutput.text = ""
    }
}
