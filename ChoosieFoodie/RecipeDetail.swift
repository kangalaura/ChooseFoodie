//
//  RecipeDetail.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation

struct RecipeDetail: Decodable {
    let title: String
    let readyInMinutes: Int
    let servings: Int
    let image: String
    let summary: String
    let extendedIngredients: [Ingredient?]
    let instructions: String?
    let analyzedInstructions: [AnalyzedInstructions?]
}

struct Ingredient: Decodable {
    let id: Int?
    let aisle: String?
    let image: String?
    let consistency: String?
    let name: String?
    let nameClean: String?
    let original: String?
    let originalName: String?
    let amount: Float?
    let unit: String?
    let measures: Measures?
}

struct AnalyzedInstructions: Decodable {
    let name: String?
    let steps: [Steps?]
}

struct Steps: Decodable  {
    let number: Int?
    let step: String?
    let ingredients: [Ingredients?]
    let equipment: [Equipment?]
}

struct Equipment: Decodable  {
    let id: Int?
    let name: String?
    let localizedName: String?
    let image: String?
}

struct Ingredients: Decodable  {
    let id: Int?
    let name: String?
    let localizedName: String?
    let image: String?
}


struct  Measures: Decodable{
    let us: MeasureDetail?
    let metric: MeasureDetail?
}

struct MeasureDetail: Decodable {
    let amount: Float?
    let unitShort: String?
    let unitLong: String?
}
