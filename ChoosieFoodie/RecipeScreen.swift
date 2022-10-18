//
//  RecipieScreen.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 19.09.22.
//

import Foundation
import SwiftUI

struct RecipeScreen: View {
    
    var mood: String
    var dietry: String?
    var meatType: String?
    var intolerance: String?
    @StateObject var data = APICaller()
    
    private let adaptiveGrid = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: adaptiveGrid , spacing: 20){
                ForEach(data.recipes, id: \.self) { recipe in
                    
                    NavigationLink(destination: RecipeDetailScreen(id: recipe.id)) {
                        VStack {
                            AsyncImage(
                                url: URL(string: recipe.image),
                                content: { image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: 170, maxHeight: 170)
                                },
                                placeholder: {
                                    ProgressView()
                                }
                            )
                            Text(recipe.title)
                                .foregroundColor(Color.black)
                        }
                    }
                    .navigationTitle(Text("Recipes"))
                    
                }
                
                
            }
        }
        .environmentObject(data)
        .onAppear {
            data.getRecipes(mood: mood, dietry: dietry ?? "nil", intolerances: intolerance ?? "nil", includeIngredients: meatType ?? "nil")
        }
    }
    
    
}

struct RecipeScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeScreen(mood: "thai", dietry: "beef")
    }
}
