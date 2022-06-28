//
//  Currency.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 26/06/2022.
//

import Foundation

enum Currency: String {
    case usd = "USD"
    
    var symbol: String? {
        switch self {
        case .usd:
            return "$"
        }
    }
}

let dollarCurrencySymbol = "$"
let bitcoinCurrencySymbol = "₿"
