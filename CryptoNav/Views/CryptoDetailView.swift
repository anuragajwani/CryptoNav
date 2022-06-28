//
//  CryptoDetailView.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 15/05/2022.
//

import SwiftUI

struct CryptoDetailView: View {
    let cryptoPrice: CryptoPrice
    
    var body: some View {
        List {
            Section("Current Price") {
                CryptoPriceRow(cryptoPrice: cryptoPrice)
            }
            Section("Operations") {
                NavigationLink {
                    CryptoExchangeView(cryptoPrice: cryptoPrice)
                } label: {
                    HStack {
                        Spacer()
                        Text("+ Buy")
                            .foregroundColor(.blue)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct CryptoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoDetailView(cryptoPrice: cryptoPrices.first!)
    }
}
