//
//  CryptoPrice.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 26/06/2022.
//

import Foundation

struct CryptoPrice: Identifiable {
    var id: String {
        get {
            cryptoCurrency.rawValue
        }
    }
    
    let cryptoCurrency: CryptoCurrency
    let price: Double
}
