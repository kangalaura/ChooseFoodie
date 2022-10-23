//
//  MeetScreen.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 23.09.22.
//

import Foundation
import SwiftUI

struct MeatScreen: View {
   
    var mood: String
    var dietry: String?
    
    var body: some View {
            VStack {
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: dietry, meatType: "beef"), label: {
                    Text("Beef")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: dietry, meatType: "chicken"), label: {
                    Text("Chicken")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: dietry, meatType: "fish"), label: {
                    Text("Fish")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: dietry, meatType: "pork"), label: {
                    Text("Pork")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: IntoleranceScreen(mood: mood, dietry: dietry, meatType: "lamb"), label: {
                    Text("Lamb")
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
            }
            .navigationTitle(Text("Select your dietry requirement"))
    }
}

struct MeatScreen_Previews: PreviewProvider {
    static var previews: some View {
        MeatScreen(mood: "test")
    }
}





