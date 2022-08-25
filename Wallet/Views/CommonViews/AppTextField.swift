//
//  AppTextField.swift
//  Wallet
//
//  Created by Kamil Książek on 24/08/2022.
//

import SwiftUI

struct AppTextField: View {
    var placeholderText: String
    var isSecureField: Bool
    @Binding var text: String
    var body: some View {
        VStack {
            if isSecureField {
                SecureField(placeholderText, text: $text)
            } else {
                TextField(placeholderText, text: $text)
            }
        }
        .padding()
        .background(Color(.init(white: 1, alpha: 0.30)))
        .clipShape(Capsule())
    }
}

struct AppTextField_Previews: PreviewProvider {
    static var previews: some View {
        AppTextField(placeholderText: "Email", isSecureField: true, text: .constant(""))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
