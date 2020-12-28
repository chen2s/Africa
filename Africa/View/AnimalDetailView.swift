//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Isaac Hernandez on 27/12/20.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20){
              
                
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                     )
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Picture")
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
                
                // FACTS
                
                
                // DESCRIPTION
                
                
                // MAP
                
                // LINK
                
                
            }//: -VStack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: - Scroll
        
         
    }//: - BODY
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 11 Pro")
    }
}
