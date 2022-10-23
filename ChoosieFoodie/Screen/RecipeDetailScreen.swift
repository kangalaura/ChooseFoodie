

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
                VStack {
                    AsyncImage(
                        url: URL(string: data.recipe.image),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, maxHeight: 200)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    Text(data.recipe.title)
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 400, height: 70)
                            .foregroundColor(.orange)
                        HStack {
                            HStack{
                                Image(systemName: "clock")
                                Text("\(data.recipe.readyInMinutes)")
                            }
                            Spacer()
                                .frame(width: 50)
                            HStack{
                                Image(systemName: "person.3")
                                Text("\(data.recipe.servings)")
                            }
                        }
                    }
            Text("Description")
                .foregroundColor(.orange)
                .accessibilityHeading(.h2)
                .font(.system(size: 18))
                .fontWeight(.bold)
            }
            HTMLView(htmlString: data.recipe.summary)
                        .frame(width: 400.0, height: 200.0)
                        .font(.system(size: 36))
            Text("Ingredients")
                .foregroundColor(.orange)
                .accessibilityHeading(.h2)
                .font(.system(size: 18))
                .fontWeight(.bold)
            Spacer()
                .frame(width: 20)
            ForEach(data.recipe.extendedIngredients){ ing in
                HStack {
                    let dbl = ing.measures?.metric?.amount! ?? 0.0
                    if floor(dbl) == dbl {
                        let amount = Int(dbl)
                        Text("\(amount)")
                    } else {
                        Text(String(format: "%.2f", dbl))
                    }
                    Text(ing.measures?.metric?.unitShort ?? "")
                    Text(ing.name ?? "nil")
                }.frame(width: 400, alignment: .leading)
            }
            Spacer()
                .frame(width: 20)
            Text("Steps")
                .foregroundColor(.orange)
                .accessibilityHeading(.h2)
                .font(.system(size: 18))
                .fontWeight(.bold)
            Spacer()
                .frame(width: 20)
            if data.recipe.isAI() {
                ForEach(0..<data.recipe.analyzedInstructions![0].steps!.count, id: \.self) { index in
                    VStack {
                        Text("Step: \(data.recipe.analyzedInstructions![0].steps![index].number ?? 0)")
                            .font(.system(size: 16))
                            .foregroundColor(.orange)
                        Text(data.recipe.analyzedInstructions![0].steps![index].step ?? "")
                            .font(.system(size: 14))
                        Spacer()
                            .frame(height: 20)
                    }.frame(width: 400)
                }.onAppear()
            
            }
            Link("more Infos", destination: data.recipe.getURL())
                .frame(width: 400, height: 56)
                .font(.title)
                .foregroundColor(.orange)
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




