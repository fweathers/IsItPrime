//
//  ViewController.swift
//  IsItPrime
//
//  Created by Felicia Weathers on 7/28/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func isItPrimeButtonTapped(sender: UIButton) {
        
        if let number = Int(numberTextField.text!) {
            
            var isPrime = true
            
            if number == 1 {
                
                isPrime = false
            }
            
            if number != 2 && number != 1 {
                
                for var i = 2; i < number; i++ {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                }
                
            }
            
            if isPrime {
                
                resultsLabel.text = "\(number) is a prime number!"
                
            } else {
                
                resultsLabel.text = "\(number) is not a prime number"
            }
        } else {
            
            resultsLabel.text = "Please enter a whole number"
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

