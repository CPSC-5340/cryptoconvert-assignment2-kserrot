//
//  CurrencyConverterViewModel.swift
//  Assignment2
//
//  Created by Kaique Torres on 3/23/24.
//

import Foundation

class CurrencyConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfCards = [ConvertModel<CurrencyItemModel>]()
    
    func fetchCards() {
        self.listOfCards = [
            ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", currencyFlag: "🇺🇸", multiplier: 1)),
            ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "Chinece Yuan", currencyCode: "CNY", currencyFlag: "🇨🇳", multiplier: 6.24)),
            ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", currencyFlag: "🇨🇦", multiplier: 1.36)),
            ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", currencyFlag: "🇦🇺", multiplier: 1.49)),
            ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", currencyFlag: "🇮🇳", multiplier: 82.60)),
            ConvertModel(cardCOntent: CurrencyItemModel(currencyName: "Chilen Peso", currencyCode: "CLP", currencyFlag: "🇨🇱", multiplier: 832.04))
        ]
    }
    
    func flip(card: ConvertModel<CurrencyItemModel>){
        if let index = findIndex(card: card){
            listOfCards[index].isFront.toggle()
        }
    }
    
    func findIndex(card: ConvertModel<CurrencyItemModel>) -> Int? {
        for index in 0..<listOfCards.count{
            if card.id == listOfCards[index].id{
                return index
            }
        }
        return nil
    }
}
