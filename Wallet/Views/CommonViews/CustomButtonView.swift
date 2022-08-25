//
//  CustomButtonView.swift
//  Wallet
//
//  Created by Kamil Książek on 25/08/2022.
//

import SwiftUI

struct CustomButtonView: View {
    var buttonName = ""
    var body: some View {
        Button(action: {}, label: {
            Text(buttonName)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(Color(.init(white: 1, alpha: 0.15)))
                .clipShape(Capsule())

        })
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(buttonName: "Sign Up")
    }
}
