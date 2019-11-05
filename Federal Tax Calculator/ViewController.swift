//
//  ViewController.swift
//  Federal Tax Calculator
//
//  Created by Landon Follows on 2019-10-29.
//  Copyright © 2019 Landon Follows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: Properties
    
       // Text Field Name
    
        @IBOutlet weak var nameField: UITextField!
    
       // The Income Tax Text Field
    
        @IBOutlet weak var incomeField: UITextField!
    
       // The Text Amount Text Field
    
        @IBOutlet weak var nameTaxLabel: UILabel!
    
       // Tax Rate Text Field
    
        @IBOutlet weak var taxRateLabel: UILabel!
    
    // MARK: Initializers
    
    
    // MARK: Methodes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    // MARK: Calculate
    
    @IBAction func taxCalculator(_ sender: Any) {
        
        // Guard Statement if user does not put in Name Label
        
        guard let nameString = nameField.text, nameString != "" else {
            
        nameTaxLabel.text = "Please Enter Your Name"
            
        taxRateLabel.text = ""
        return
        
        }
        
        // Guard Statement if User Does not put anything in Income Label
        
        guard let incomeString = incomeField.text, incomeString != "" else {
            
            nameTaxLabel.text = "Please Enter your Income"
            
            taxRateLabel.text = ""
            return
        }
        
        // Guard Statement if User does not use Numbers
        
        guard let incomeDouble = Double(incomeString) else {
            
            nameTaxLabel.text = "Please Use Numbers"
            
            taxRateLabel.text = ""
            return
        }
        
        // Calaculate Using Switch Statement
        
       switch incomeDouble {
        
                case 0...47_630:
                    
                    // Multiply Income with tax rate
                    
                    let totalTax = incomeDouble * 0.15
                    
                    // Round
                    
                    let roundedTax = (round(100*totalTax)/100)
                    
                    // Convert to string
                    
                    let roundedTaxString = String(roundedTax)
                    
                    // Find the tax rate
                    
                    let taxRate = totalTax/incomeDouble*100
                    
                    // Round Tax Rate
                    
                    let effectiveTax = (round(10*taxRate)/10)
                    
                    // Display each text to the view in Label
                    
                    nameTaxLabel.text = "The Federal Tax you owe \(nameString) is \(roundedTaxString)$ Not Bad."
                    
                    taxRateLabel.text = "And the Effective Tax Rate is \(effectiveTax)%."
                    
                case 47_631...95_259:
                    
                    // Find tax for 47_631...95_259
                    
                    let taxTwo = 7144.5
                    
                    // Multiply the Income Tax
                    
                    let taxThree = (incomeDouble-47_630) * 0.205
                    
                    // Add Tax amounts together
                    
                    let totalTax = taxTwo + taxThree
                    
                    // Round Decimal Places
                    
                    let roundedTax = (round(100*totalTax)/100)
                    
                    // Convert to String
                    
                    let totalTaxString = String(roundedTax)
                    
                    // Find the tax rate
                    
                    let taxRate = totalTax/incomeDouble*100
                    
                    // Round tax rate to one decimal place
                    
                    let effectiveTax = (round(10*taxRate)/10)
                    
                    // Display each text to the view in each label
                    
                    nameTaxLabel.text = "The Federal Tax you owe \(nameString) is \(totalTaxString)$ Nice."
                    
                    taxRateLabel.text = "And the Effective Tax Rate is \(effectiveTax)%."
                    
                case 95_260...147_667:
                    
                    // Find The Tax for 95_260...147_667
                    
                    let taxOne = 7144.5
                    
                    // Define the tax %
                    
                    let taxTwo = 9763.945
                    
                    // Multiply the income
                    
                    let taxThree = (incomeDouble-95259) * 0.26
                    
                    // Add the tax amounts together
                    
                    let totalTax = taxOne + taxTwo + taxThree
                    
                    // Round to decimal places
                    
                    let roundedTax = (round(100*totalTax)/100)
                    
                    // Convert to string data type
                    
                    let totalTaxString = String(roundedTax)
                    
                    // Find the tax rate
                    
                    let taxRate = totalTax/incomeDouble*100
                    
                    // Round tax rate to one decimal place
                    
                    let effectiveTax = (round(10*taxRate)/10)
                    
                    // Display each text to the view in each label
                    
                    nameTaxLabel.text = "The Federal Tax you owe \(nameString) is \(totalTaxString)$ Nice."
                    
                    taxRateLabel.text = "And the Effective Tax Rate is \(effectiveTax)%"
                    
                case 147_668...210_371:
                    
                    // find the tax for 147_668...210_371
                    
                    let taxOne = 7144.5
                    
                    // Define tax for the income rate
                    
                    let taxTwo = 9763.945
                    
                    // Define the tax amount
                    
                    let taxThree = 13626.08
                    
                    // Multiply the income
                    
                    let taxFour = (incomeDouble-147667) * 0.29
                    
                    // Add the tax amounts
                    
                    let totalTax = taxOne + taxTwo + taxThree + taxFour
                    
                    // Round to decimal places
                    
                    let roundedTax = (round(100*totalTax)/100)
                    
                    // Convert to string
                    
                    let totalTaxString = String(roundedTax)
                    
                    // Find the tax rate
                    
                    let taxRate = totalTax/incomeDouble*100
                    
                    // Round the tax rate
                    
                    let effectiveTax = (round(10*taxRate)/10)
                    
                    // Display each text to the view in each label
                    
                    nameTaxLabel.text = "The Federal Tax you owe \(nameString) is \(totalTaxString)$ Nice."
                    
                    taxRateLabel.text = "And the Effective Tax Rate is \(effectiveTax)%."
                    
                    // Find the default amount
        
                default:
                    
                    // Define tax One
                    
                     let taxOne = 7144.5
                     
                     // Define tax Two
                     
                     let taxTwo = 9763.945
                     
                     // Define tax Three
                     
                     let taxThree = 13626.08
                     
                     // Define tax four
                     
                     let taxFour = 18184.16
                     
                     // Multiply the income
                     
                     let taxFive = (incomeDouble-210371) * 0.33
                     
                     // Add the amounts together
                     
                     let totalTax = taxOne + taxTwo + taxThree + taxFour + taxFive
                     
                     // Round to decimal places
                     
                     let roundedTax = (round(100*totalTax)/100)
                     
                     // Convert to string
                     
                     let totalTaxString = String(roundedTax)
                     
                     // Find the tax rate
                     
                     let taxRate = totalTax/incomeDouble*100
                     
                     // Round tax rate
                     
                     let effectiveTax = (round(10*taxRate)/10)
                     
                     // Display each text to the view in each label
                     
                     nameTaxLabel.text = "The Federal Tax you owe \(nameString) is \(totalTaxString)$ Nice."
                     
                     taxRateLabel.text = "And the Effective Tax Rate is \(effectiveTax)%."
        
                }
            }
        }


