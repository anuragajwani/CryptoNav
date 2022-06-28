//
//  CryptoListView.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 15/05/2022.
//

import SwiftUI

struct CryptoListView: View {
    var body: some View {
        List {
            Section("CryptoCurrencies") {
                ForEach(cryptoPrices) { cryptoPrice in
                    NavigationLink {
                        CryptoDetailView(cryptoPrice: cryptoPrice)
                    } label: {
                        CryptoPriceRow(cryptoPrice: cryptoPrice)
                    }
                }
            }
        }
    }
}

struct CryptoListView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoListView()
    }
}

let cryptoPrices = [
    CryptoPrice(cryptoCurrency: .bitcoin, price: 21604.84),
    CryptoPrice(cryptoCurrency: .doge, price: 0.07),
    CryptoPrice(cryptoCurrency: .litecoin, price: 59.46),
    CryptoPrice(cryptoCurrency: .ethereum, price: 1258.79),
    CryptoPrice(cryptoCurrency: .xrp, price: 0.37),
]
