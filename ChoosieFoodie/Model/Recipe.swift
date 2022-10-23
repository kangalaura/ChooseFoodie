//
//  Recipe.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation

struct Recipe: Decodable, Hashable {
    let id: Int
    let title: String
    let image: String
    let imageType: String
}
