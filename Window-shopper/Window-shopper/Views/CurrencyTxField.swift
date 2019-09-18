//
//  CurrencyTxField.swift
//  Window-shopper
//
//  Created by Marzieh on 2019-09-16.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20 // you can't use double here
        let currencyLabel = UILabel(frame : CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.2018139983)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true // this is so the rounded corners stay
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView ()
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true // this is so the rounded corners stay
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor  = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

