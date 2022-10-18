//
//  RecipeDetailScreen.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation
import SwiftUI

struct RecipeDetailScreen: View {
    
    var id: Int
    @StateObject var data = APICaller()
    
    private let adaptiveGrid = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        ScrollView {
            
            AsyncImage(
                url: URL(string: data.recipe.image),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: 200,
                            alignment: .top
                        )
                },
                placeholder: {
                    ProgressView()
                }
            )
            Text(data.recipe.title)
                .foregroundColor(.orange)
                .fontWeight(.bold)
            Rectangle()
                .frame(
                    minWidth: 200,
                    maxWidth: .infinity,
                    minHeight: 60,
                    maxHeight: 60
                )
                .background(.orange)
            HTMLView(htmlString: data.recipe.summary)
                .frame(width: 400.0, height: 400.0)
        }
        .environmentObject(data)
        .onAppear {
            data.getRecipeDetail(id: id)
        }
    }
    
    
}

struct RecipeDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailScreen(id: 1)
    }
}



