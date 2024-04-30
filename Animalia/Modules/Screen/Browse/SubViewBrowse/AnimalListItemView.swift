//
//  AnimalListItemView.swift
//  Animalia
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct AnimalListItemView: View {
    let animal: AnimalModel
    
    var body: some View {
        HStack(spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8){
                Text(animal.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 8)
            }
            
        }
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    return AnimalListItemView(animal: animals[1])
}
