//
//  ContentView.swift
//  ChoosieFoodie
//
//  Created by laurarosa on 05.09.22.
//

import SwiftUI

struct MoodScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Rectangle()
                        .frame(width: 400, height: 50)
                        .foregroundColor(Color.orange)
                        .cornerRadius(50)
                    Text("ChoosieFoodie is at your aid")
                }
                Spacer()
                    .frame(height: 20)
                Image("Brioche")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
                    .frame(height: 20)
                Text("What are you in the mood for?")
                    .foregroundColor(Color.orange)
                    .bold()
                NavigationLink(destination: DietryScreen(mood: "italian"), label: {
                    Text("Italian")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: DietryScreen(mood: "chinese"), label: {
                    Text("Chinese")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
                NavigationLink(destination: DietryScreen(mood: "thai"), label: {
                    Text("Thai")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(18)
                })
            }.offset(y: -100)
        }
    }
}

struct MoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoodScreen()
    }
}
