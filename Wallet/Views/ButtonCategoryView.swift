//
//  ButtonCategoryView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ButtonCategoryView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ButtonCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonCategoryView()
                .previewLayout(.sizeThatFits)
            .padding()
            ButtonCategoryView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
