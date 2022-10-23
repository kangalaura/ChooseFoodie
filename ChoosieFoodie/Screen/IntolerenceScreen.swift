//
//  IntolerenceScreen.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation
import SwiftUI

struct IntoleranceScreen: View {

    var mood: String
    var dietry: String?
    var meatType: String?
    
    
    var body: some View {
            VStack {
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType), label: {
                    Text("Nothing")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                if dietry != "glutenFree" {
                    NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "gluten"), label: {
                        Text("Gluten")
                            .bold()
                            .frame(width: 300, height: 50)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(18)
                    })
                } else if dietry != "diaryFree"{
                    NavigationLink(destination: RecipeScreen(mood: mood,  dietry: dietry, meatType: meatType, intolerance: "diary"), label: {
                        Text("Dairy")
                            .bold()
                            .frame(width: 300, height: 50)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(18)
                    })
                }
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "egg"), label: {
                    Text("Egg")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood,  dietry: dietry, meatType: meatType, intolerance: "grain"), label: {
                    Text("Grain")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "peanut"), label: {
                    Text("Peanut")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood,  dietry: dietry, meatType: meatType, intolerance: "seafood"), label: {
                    Text("Seafood")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "sesame"), label: {
                    Text("Sesame")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "shellfish"), label: {
                    Text("Shellfish")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "Soy"), label: {
                    Text("Soy")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: RecipeScreen(mood: mood, dietry: dietry, meatType: meatType, intolerance: "Sulfite"), label: {
                    Text("Sulfite")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
            }
        VStack {
                NavigationLink(destination: RecipeScreen(mood: mood,  dietry: dietry, meatType: meatType, intolerance: "treeNut"), label: {
                    Text("Tree Nut")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
            NavigationLink(destination: RecipeScreen(mood: mood,  dietry: dietry, meatType: meatType, intolerance: "wheat"), label: {
                Text("Wheat")
                    .bold()
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(18)
            })
               
        }
            .navigationTitle(Text("Any allergies?"))
    }
}

struct IntoleranceScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntoleranceScreen(mood: "test", dietry: "test")
    }
}
