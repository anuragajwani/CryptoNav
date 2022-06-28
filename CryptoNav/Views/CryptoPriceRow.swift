//
//  CryptoPriceRow.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 26/06/2022.
//

import SwiftUI

extension NumberFormatter {
    static func getTwoDecimalPlaces(fromDouble dbl: Double, withCurrencySymbol currencySymbol: String) -> String {
        let nf = NumberFormatter()
        nf.minimumFractionDigits = 2
        nf.numberStyle = .currency
        nf.currencySymbol = currencySymbol
        return nf.string(from: dbl as NSNumber)!
    }
}

struct CryptoPriceRow: View {
    let cryptoPrice: CryptoPrice
    
    var body: some View {
        HStack {
            Text(cryptoPrice.cryptoCurrency.rawValue)
            Spacer()
            Text(NumberFormatter.getTwoDecimalPlaces(fromDouble: cryptoPrice.price, withCurrencySymbol: dollarCurrencySymbol))
        }
    }
}

struct CryptoPriceRow_Previews: PreviewProvider {
    static var previews: some View {
        CryptoPriceRow(cryptoPrice: cryptoPrices.first!)
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
