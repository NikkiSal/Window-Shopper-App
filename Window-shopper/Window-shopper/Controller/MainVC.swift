//
//  ViewController.swift
//  Window-shopper
//
//  Created by Marzieh on 2019-09-16.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxField!
    @IBOutlet weak var priceTxt: CurrencyTxField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) // always use setTitle
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }
    
    @objc func calculate() { //it's using a objc feature
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
            view.endEditing(true)
            resultLabel.isHidden = false
            hoursLabel.isHidden = false
            resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
            resultLabel.isHidden = true
            hoursLabel.isHidden = true
            wageTxt.text = ""
            priceTxt.text = ""  // notice that this is an empty string not a space!
        
    }
    
}
