//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: Converter()){
                    Text("World Currency Exchange")
                }
                NavigationLink(destination: CryptoConverter()){
                    Text("Crypto Exchange")
                }
            .navigationTitle("Conversion App")
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
