//
//  ViewController.swift
//  CryptoHW1
//
//  Created by Denis Sapalov on 15.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moduleTextField: UITextField!
    @IBOutlet weak var aField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    
    @IBOutlet weak var firstResultLabel: UILabel!
    @IBOutlet weak var secondResultLabel: UILabel!
    @IBOutlet weak var thirdResultLabel: UILabel!
    @IBOutlet weak var fourthResultLabel: UILabel!
    @IBOutlet weak var fifthResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func calculate() {
        guard let safeModule = moduleTextField.text, let module = Int(safeModule),
         let safeA = aField.text, let a = Int(safeA),
         let safeB = bTextField.text, let b = Int(safeB) else { return }
        
        firstTask(module: module)
        secondTask(module: module, a: a)
        thirdTask(module: module, a: a, b: b)
        fourthTask(a: a, b: b)
        fifthTask(module: module, a: a, b: b)
    }
    
    
    private func firstTask(module: Int) {
        firstResultLabel.text = "Заданий модуль для розрахунків: \(module)"
    }
    
    private func secondTask(module: Int, a: Int) {
        secondResultLabel.text = "a mod m = \(a % module)"
    }
    
    private func thirdTask(module: Int, a: Int, b: Int) {
        thirdResultLabel.text = "Not implemented"
    }
    
    private func fourthTask(a: Int, b: Int) {
        
        var result = 0
        var inputA = a
        var inputB = b
        if a == 0 {
            result = b
        } else {
            
            while inputB != 0 {
                if inputA > inputB {
                    inputA = inputA - inputB
                } else {
                    inputB = inputB - inputA
                }
            }
            result = inputA
        }
        
        fourthResultLabel.text = "\(result)"
    }
    
    private func fifthTask(module: Int, a: Int, b: Int) {
        fifthResultLabel.text = "Not implemented"
    }
}

