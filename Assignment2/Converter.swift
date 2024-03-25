//
//  Converter.swift
//  Assignment2
//
//  Created by Kaique Torres on 3/23/24.
//

import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                    ForEach(viewModel.listOfCards){ card in
                        CurrencyItem(card: card)
                            .onTapGesture {
                                withAnimation(.easeInOut){
                                    viewModel.flip(card: card)
                                }
                            }
                            
                    }
                }
                .padding()
            }
            .navigationTitle("Currency Converter")
            .navigationBarTitleDisplayMode(.inline)
            
            }
        .onAppear{
            viewModel.fetchCards()
        }
    }
}
    
#Preview {
    Converter()
}
