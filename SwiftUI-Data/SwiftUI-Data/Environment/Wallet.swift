//
//  Wallet.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 05/01/2024.
//

import Foundation

class Wallet {
    var balance: Int
    var locale: Locale
    
    init(balance: Int, locale: Locale) {
        self.balance = balance
        self.locale = locale
    }
    
    func getDate(locale: Locale) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        let date = Date(timeIntervalSinceReferenceDate: Date.now.timeIntervalSinceReferenceDate)
        
        dateFormatter.locale = locale
        
        return dateFormatter.string(from: date)
    }
    
    func getBalance(locale: Locale) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = locale
        numberFormatter.numberStyle = .currency
        numberFormatter.maximumFractionDigits = 0
        
        let number = numberFormatter.string(from: NSNumber(integerLiteral: balance))

        return number!
    }
}
