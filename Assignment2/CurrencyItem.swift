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
        Group{
            if card.isFront{
                FrontCurrencyItem(card: card.cardCOntent)
                
            } else {
                BackCurrencyItem(card: card.cardCOntent)
            }
        }
        .cornerRadius(10)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(lineWidth: 1)
            .foregroundColor(.gray)
        )
    }
}

#Preview {
CurrencyItem(card: ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "", currencyCode: "", currencyFlag: "", multiplier: 1)))
}

struct FrontCurrencyItem: View {

var card: CurrencyItemModel

var body: some View {
    VStack(alignment: .leading){
        Text(card.currencyFlag).font(.largeTitle)
        Spacer()
        Text(card.currencyCode).font(.headline)
        
    }
    .padding()
    .frame(width: 150, height: 150)
    .background(Color.blue)
    .foregroundColor(.white)
    }
}


struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName).font(.headline)
                Spacer()
            }
            HStack{
                Spacer()
                Text(String(card.multiplier)).font(.subheadline)
            }
        }
        .padding()
        .frame(width: 150, height: 150)
        .background(.mint)
        .foregroundColor(.white)
    }
}



//#Preview {
//    CurrencyItem()
//}
