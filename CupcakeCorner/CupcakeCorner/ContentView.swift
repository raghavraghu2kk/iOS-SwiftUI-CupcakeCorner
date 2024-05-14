//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView{
                
                MainContentView().tabItem { Label("CupCake", systemImage: "birthday.cake.fill") }
                
                List {
                    NavigationLink("Lesson 1 - Fetch an API from itunes") {
                        lesson1_fetchAPI()
                    }
                    
                    NavigationLink("Lesson 2 - Image Loading API") {
                        lesson2_imageLoadAPI()
                    }
                    
                    NavigationLink("Lesson 3 - Validating forms") {
                        lesson3_ValidatingForms()
                    }
                    
                    NavigationLink("Lesson 4 - Codable Class") {
                        lesson4_CodableClass()
                    }
                    
                    NavigationLink("Lesson 5 - Haptic Effects") {
                        lesson5_HapticEffects()
                    }
                }.tabItem { Label("Lessons", systemImage: "pencil.and.list.clipboard") }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
