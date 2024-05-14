//
//  lesson1_fetchAPI.swift
//  CupcakeCorner
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct lesson1_fetchAPI: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack {
                Text(item.trackName)
                    .font(.headline)
                
                Text(item.collectionName)
            }
        }
        .task {
            await loadData()
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        print("Hello")
        do {
            let(data, _) = try await URLSession.shared.data(from: url)
            print("Hello")
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
            print(results.count)
            print("Hello")
        } catch {
            print("Invalid data")
        }
    }

}



#Preview {
    lesson1_fetchAPI()
}
