//
//  RecipeModel.swift
//  Recipe
//
//  Created by Magued Fouad on 6/24/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        recipes = DataService.getLocalData()
        
    }
}
