//
//  ContentView.swift
//  Africa
//
//  Created by Isaac Hernandez on 23/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       // MARK: - Properties
        
        let animals : [Animal] = Bundle.main.decode("animals.json")
        
        // MARK: - Body
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals){ animal in
                    AnimalListItemView(animal: animal)
                }
            } //: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }//: NAvigation
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
