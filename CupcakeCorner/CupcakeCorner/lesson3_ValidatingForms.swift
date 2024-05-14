//
//  lesson3_ValidatingForms.swift
//  CupcakeCorner
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct lesson3_ValidatingForms: View {
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool { username.count < 5 || email.count < 5 }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account..")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    lesson3_ValidatingForms()
}
