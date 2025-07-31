//
//  SecureInputTextField.swift
//  SecureInputField
//
//  Created by Swati Sharma
//

import SwiftUI

struct SecureInputTextField: View {
    var placeholder: String
    @Binding var text: String
    @State private var isSecure: Bool = true

    var body: some View {
        ZStack(alignment: .trailing) {
            Group {
                if isSecure {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            .padding(.horizontal)
            .frame(height: 50)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1)
            )
            .autocapitalization(.none)
            .disableAutocorrection(true)

            Button(action: {
                isSecure.toggle()
            }) {
                Image(systemName: isSecure ? "eye.slash.fill" : "eye.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 16)
        }
    }
}
