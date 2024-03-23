//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Kaique Torres on 3/23/24.
//

import SwiftUI

struct CryptoConverter: View {
    
    @State private var bitcoinAmount: String = ""
    @State private var conversionRates: [String: Double] = [
        "US Dollar": 23450.0,
        "Ethereum": 14.3,
        "Tether": 23450.0,
        "BNB": 77.2,
        "XRP": 62113.0
    ]
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Bitcoin")){
                    TextField("Enter amount of Bitcoin", text: $bitcoinAmount)
                        .keyboardType(.decimalPad)
                }
                Section{
                    ForEach(conversionRates.sorted(by: >),id: \.key) {key, value in
                        HStack{
                            Text(key)
                            Spacer()
                            Text("\(convertToCurrency(bitcoinAmount: bitcoinAmount, rate: value), specifier: "%.2f")")
                        }
                    }
                }
            }
            .navigationTitle("Conversion App")
        }
    }
    
    private func convertToCurrency(bitcoinAmount: String, rate: Double) -> Double{
        (Double(bitcoinAmount) ?? 0) * rate
    }
}

#Preview {
    CryptoConverter()
}
