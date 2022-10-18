//
//  ChoosieFoodieAPI.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation

@MainActor class APICaller: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var recipe: RecipeDetail = RecipeDetail(title: "test", readyInMinutes: 45, servings: 2, image: "https://", summary: "Test ", extendedIngredients: [Ingredient(id: 1, aisle: "", image: "", consistency: "", name: "", nameClean: "", original: "", originalName: "", amount: 2.0, unit: "", measures: Measures(us: MeasureDetail.init(amount: 2.0, unitShort: "", unitLong: ""), metric: MeasureDetail.init(amount: 2.0, unitShort: "", unitLong: "")))], instructions: "", analyzedInstructions:[ AnalyzedInstructions.init(name: "", steps: [Steps.init(number: 1, step: "", ingredients: [Ingredients.init(id: 1, name: "", localizedName: "", image: "")], equipment: [Equipment.init(id: 1, name: "", localizedName: "", image: "")])])])

    
    func getRecipes(mood: String, dietry: String, intolerances: String, includeIngredients: String){

        guard let url = URL(string:"https://api.spoonacular.com/recipes/complexSearch?apiKey=22a5b61a555a4ce0b0eb7c9d30f33fb4&cuisine=\(mood)&diet=\(dietry)&intolerances=\(intolerances)&includeIngredients=\(includeIngredients)") else {
            return
        }
        
        let call = URLSession.shared.dataTask(with: url) {data, _, error in
            if let error = error {
                print("Error: \(error)")
            }else if let data = data {
                do{
                    let result = try JSONDecoder().decode(RecipesResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.recipes = result.results
                    }
                }catch{
                    print("Error Parsing Data")
                }
            }
        }
        call.resume()
    }
    
    func getRecipeDetail(id: Int){

        guard let url = URL(string:"https://api.spoonacular.com/recipes/\(id)/information?apiKey=22a5b61a555a4ce0b0eb7c9d30f33fb4") else {
            return
        }
        
        print(url)
        let call = URLSession.shared.dataTask(with: url) {data, _, error in
            if let error = error {
                print("Error: \(error)")
            }else if let data = data {
                do{
                    let result = try JSONDecoder().decode(RecipeDetail.self, from: data)
                    DispatchQueue.main.async {
                        self.recipe = result
                    }
                }catch{
                    print("Error Parsing Data \(error)")
                }
            }
        }
        call.resume()
    }
    
    
}

struct RecipesResponse: Decodable{
    let results: [Recipe]
}
