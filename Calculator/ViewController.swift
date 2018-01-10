//
//  ViewController.swift
//  Calculator
//
//  Created by Adel on 2017-11-02.
//  Copyright © 2017 Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numbersDisplay: UILabel!
    
    var currentNumber = ""
    var numbers = [Double]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateNumberDisplay(numberToAdd: String) {
        currentNumber.append(numberToAdd)
        numbersDisplay.text = currentNumber
    }
    
    @IBAction func onPressOne(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "1")
    }
    
    @IBAction func onPressTwo(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "2")
    }

    @IBAction func onPressThree(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "3")
    }

    @IBAction func onPressFour(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "4")
    }

    @IBAction func onPressFive(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "5")
    }

    @IBAction func onPressSix(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "6")
    }

    @IBAction func onPressSeven(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "7")
    }

    @IBAction func onPressEight(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "8")
    }

    @IBAction func onPressNine(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "9")
    }

    @IBAction func onPressZero(_ sender: Any) {
        updateNumberDisplay(numberToAdd: "0")
    }
    
    @IBAction func onClearPess(_ sender: Any) {
        numbersDisplay.text = ""
        numbers = [Double]()
        currentNumber = ""
    }
    
    @IBAction func onPlusPress(_ sender: Any) {
        if let numberToAdd = Double(currentNumber) {
            numbers.append(numberToAdd)
        }
        
        currentNumber = ""
    }
    
    @IBAction func onEqualPress(_ sender: Any) {
        if let numberToAdd = Double(currentNumber) {
            numbers.append(numberToAdd)
        }
        
        currentNumber = ""
        
        var total: Double = 0.0
        
        for i in 0...numbers.count - 1 {
            total += numbers[i]
        }
        
        updateNumberDisplay(numberToAdd: String(total))
        
        currentNumber = ""
    }
}

