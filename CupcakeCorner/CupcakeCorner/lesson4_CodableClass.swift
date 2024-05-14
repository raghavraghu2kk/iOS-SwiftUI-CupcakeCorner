//
//  lesson4_CodableClass.swift
//  CupcakeCorner
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    var name = "Taylor"
}

struct lesson4_CodableClass: View {
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }
    
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        
        print(str)
    }
}

#Preview {
    lesson4_CodableClass()
}
