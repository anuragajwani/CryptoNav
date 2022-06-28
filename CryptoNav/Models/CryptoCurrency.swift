//
//  CryptoCurrency.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 26/06/2022.
//

import Foundation

enum CryptoCurrency: String {
    case bitcoin = "Bitcoin",
         doge = "Doge",
         litecoin = "Litecoin",
         ethereum = "Ethereum",
         xrp = "XRP"
    
    var symbol: String? {
        switch self {
        case .bitcoin:
            return "₿"
        default:
            return nil
        }
    }
    
    var name: String {
        switch self {
        case .bitcoin:
            return "Bitcoin"
        case .doge:
            return "Doge"
        case .litecoin:
            return "Litecoin"
        case .ethereum:
            return "Ethereum"
        case .xrp:
            return "XRP"
        }
    }
}
