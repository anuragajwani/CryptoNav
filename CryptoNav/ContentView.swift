//
//  ContentView.swift
//  CryptoNav
//
//  Created by Anurag Ajwani on 15/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CryptoListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
