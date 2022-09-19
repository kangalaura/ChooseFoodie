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
    var dietry: String
    
    private let adaptiveGrid = [
            GridItem(.adaptive(minimum: 170))
        ]
        
        let data = ["Pommes", "Burger", "Pizza"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: adaptiveGrid , spacing: 20){
                            ForEach(data, id: \.self) { number in
                                ZStack{
                                    Rectangle()
                                        .frame(width: 170, height: 170)
                                        .foregroundColor(Color.orange)
                                        .cornerRadius(18)
                                    Text(number)
                                }
                            }
                        }
                        .navigationTitle(Text("Recipes"))
        }
        
        }
    
}

struct RecipeScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeScreen(mood: "Thai", dietry: "chicken")
    }
}
