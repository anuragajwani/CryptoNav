//
//  CryptoExchangeView.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 15/05/2022.
//

import SwiftUI

struct CryptoExchangeView: View {
    let cryptoPrice: CryptoPrice
    
    var body: some View {
        List {
            Section("") {
                HStack {
                    Text(Currency.usd.rawValue)
                    Spacer()
                    HStack {
                        Text("-\(Currency.usd.symbol ?? "")")
                        TextField("0.00", text: .constant("0.00"))
                            .keyboardType(.decimalPad)
                            .fixedSize()
                            .multilineTextAlignment(.trailing)
                    }
                }
                HStack {
                    Text(cryptoPrice.cryptoCurrency.name)
                    Spacer()
                    HStack {
                        Text("+\(cryptoPrice.cryptoCurrency.symbol ?? "")")
                        TextField("0.00", text: .constant("0.00"))
                            .keyboardType(.decimalPad)
                            .fixedSize()
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
            Section("") {
                HStack {
                    Spacer()
                    Button("Buy") {
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

struct CryptoExchangeView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoExchangeView(cryptoPrice: cryptoPrices.first!)
    }
}
