//
//  RecipeDetailView.swift
//  Recipe
//
//  Created by Magued Fouad on 6/25/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        VStack(alignment: .leading) {
            ScrollView {
                
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 0.1)
                    
                    ForEach (recipe.ingredients, id: \.self) { item in
                    
                        Text("- " + item)
                            .padding(.bottom, 0.1)
                            
                    }
                    
                    Divider()
                    
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 0.1)

                    ForEach(recipe.directions, id: \.self) { item in
                        
                        Text("- " + item)
                            .padding(.bottom, 1)
                    }
                    
                }
                .padding()
                
            }
            .navigationTitle(recipe.name)
        }

    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}

