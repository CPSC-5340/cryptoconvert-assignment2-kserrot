//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Kaique Torres on 3/23/24.
//

import SwiftUI

struct CurrencyItem: View {

var card : ConvertModel<CurrencyItemModel>

var body: some View {
        if card.isFront{
            FrontCurrencyItem(card: card.cardCOntent)
            
        } else {
            BackCurrencyItem(card: card.cardCOntent)
        }
    }
}

#Preview {
CurrencyItem(card: ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "", currencyCode: "", currencyFlag: "", multiplier: 1)))
}

struct FrontCurrencyItem: View {

var card: CurrencyItemModel

var body: some View {
    VStack {
        HStack {
            Text(card.currencyFlag)
            Spacer()
        }
        HStack{
            Spacer()
            Text(card.currencyCode)
        }
    }
    .frame(width: 130, height: 130)
    .padding()
    .background(.blue)
}
}

struct BackCurrencyItem: View {

var card: CurrencyItemModel

var body: some View {
    VStack {
        HStack {
            Text(card.currencyName)
            Spacer()
        }
        HStack{
            Spacer()
            Text(String(card.multiplier))
        }
    }
    .frame(width: 130, height: 130)
    .padding()
    .background(.blue)
}
}


//#Preview {
//    CurrencyItem()
//}
