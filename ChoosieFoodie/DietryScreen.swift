//
//  DietryScreen.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 19.09.22.
//

import Foundation
import SwiftUI

struct DietryScreen: View {
    
    var mood: String
    
    var body: some View {
            VStack {
                Text("Dietry Requirements")
                    .foregroundColor(Color.orange)
                    .bold()
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: "beef"), label: {
                    Text("Beef")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: "chicken"), label: {
                    Text("Chicken")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: "fish"), label: {
                    Text("Fish")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: "vegan"), label: {
                    Text("Vegan")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: "vegetarian"), label: {
                    Text("Vegetarian")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
            }
        }
    
}

struct DietryScreen_Previews: PreviewProvider {
    static var previews: some View {
        DietryScreen(mood: "Thai")
    }
}
