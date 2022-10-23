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
                NavigationLink(destination: MeatScreen(mood: mood, dietry: "meat"), label: {
                    Text("Meat")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: "vegan"), label: {
                    Text("Vegan")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: "glutenFree"), label: {
                    Text("Glutenfree")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: "dairyFree"), label: {
                    Text("Dairyfree")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: "vegetarian"), label: {
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
