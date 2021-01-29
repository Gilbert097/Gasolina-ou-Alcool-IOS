//
//  ViewController.swift
//  Gasolina ou Alcool
//
//  Created by Gilberto da Luz on 28/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultTextLabel: UILabel!
    @IBOutlet weak var priceAlcoholTextField: UITextField!
    @IBOutlet weak var priceGasolineTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateFuel(_ sender: Any) {
        if let priceAlcohol = priceAlcoholTextField.text{
            if let priceGasoline = priceGasolineTextField.text{
                
                let isValid =  self.validateFields(priceAlcohol: priceAlcohol, priceGasoline: priceGasoline)
                if isValid {
                    
                }else{
                    resultTextLabel.text = "Digite os preços para calcular!"
                }
            }
        }
    }
    
    func validateFields(priceAlcohol: String, priceGasoline:String)-> Bool{
        var isValid = true
        
        if priceAlcohol.isEmpty || priceGasoline.isEmpty {
            isValid = false
        }
        
        return isValid
    }
    
}
