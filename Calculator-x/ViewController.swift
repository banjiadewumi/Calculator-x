//
//  ViewController.swift
//  Calculator-x
//
//  Created by Banji Adewumi on 10/16/18.
//  Copyright © 2018 Banji Adewumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isSymbolPressed: Bool = false
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var symbol: String = ""
    var settings: SettingsViewController!
    
    let defaults = UserDefaults.standard
    

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        defaults.double(forKey: "showLastNumber")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(_ sender: UIButton) {
        
        let buttonText = sender.titleLabel?.text!
        let labelText = resultLabel.text!
        
        if buttonText == "." && labelText.contains(".") {
            return
        }
        
        if isSymbolPressed {
            
            resultLabel.text = buttonText
            isSymbolPressed = false
            return
        }
        resultLabel.text =
            "\((Double(labelText) != 0.0 || labelText.contains(".") || buttonText == ".") ? labelText: "")" + "\(buttonText!)"
        
        
    }
    
    @IBAction func symbolPressed(_ sender: UIButton) {
        
        firstNumber = Double(resultLabel.text!)!
        symbol = (sender.titleLabel?.text)!
        isSymbolPressed = true
    }
    
    @IBAction func percentangeOrPlusMinusPressed(_ sender: UIButton) {
        var currentNumber: Double = 0
        if sender.titleLabel?.text == "%" {
            
            currentNumber = Double(resultLabel.text!)!
            resultLabel.text =  String(currentNumber / 100)
            
        }
        
        else if sender.titleLabel?.text == "+/-" {
            
            currentNumber = Double(resultLabel.text!)!
            if currentNumber > 0 {
                resultLabel.text = String(-currentNumber)
            }
            else if currentNumber == Double(0) || currentNumber < Double(0) {
                resultLabel.text = String(currentNumber * -1)
            }
           
            
        }
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        
        firstNumber = 0.0
        resultLabel.text = String(0)
        isSymbolPressed = false
        symbol = ""
        
    
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let secondNumber = Double(resultLabel.text!)!
        let result = calculate(secondNumber)
        resultLabel.text = String(result)
        firstNumber = 0.0
        symbol = ""
        isSymbolPressed = true
        
       defaults.set(result, forKey: "showLastNumber")
    }

    func calculate (_ secondNumber: Double) -> Double {
        
        switch symbol {
        case "+": return firstNumber + secondNumber
        case "-": return firstNumber - secondNumber
        case "x": return firstNumber * secondNumber
        case "÷": return firstNumber / secondNumber
        default: return Double(resultLabel.text!)!
        }
    }
    
    func changeSkin() {
        
    }
   
    
    
}

