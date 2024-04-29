//
//  AnimalDetailView.swift
//  Animalia
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(showsIndicators: false){
            //HERO IMAGE
            Image(animal.image)
                .resizable()
                .scaledToFit()
            
            // TITLE
            Text(animal.name.uppercased())
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.vertical, 8)
            //                .underline(color: .accent)
                .background(
                    Color.accent
                        .frame(height: 6)
                        .offset(y: 24)
                )
            
            // HEADLINE
            Text(animal.headline)
                .font(.headline)
                .foregroundStyle(.accent)
                .padding()
            
            // GALLERY
            Group {
                HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                InsetGalleryView(animal: animal)
            }
            .padding(.horizontal)
            
            // FACT
            Group{
                HeadingView(headingImage: "questionmark.circle", headingText: " Did you know?")
                InsetFactView(animal: animal)
            }
            .padding(.horizontal)
            
            // DESCRIPTION
            Group{
                HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                Text(animal.description)
            }
            .padding(.horizontal)
            
            // MAP
            
            Group{
                HeadingView(headingImage: "map", headingText: "National Parks")
                InsetMapView()
            }
            .padding(.horizontal)
        }
        .navigationTitle("Learning about \(animal.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    return NavigationStack{
        AnimalDetailView(animal: animals[8])
        
    }
}
