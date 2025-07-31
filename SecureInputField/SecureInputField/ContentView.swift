//
//  ContentView.swift
//  SecureInputField
//
//  Created by Swati Sharma
//

import SwiftUI

struct ContentView: View {
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        VStack(spacing: 16) {
            SecureInputTextField(placeholder: "Password", text: $password)
            SecureInputTextField(placeholder: "Confirm Password", text: $confirmPassword)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
