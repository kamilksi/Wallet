//
//  ButtonCategoryView.swift
//  Wallet
//
//  Created by Kamil Książek on 07/08/2022.
//

import SwiftUI

struct ButtonCategoryView: View {
    var text: String = "Zakupy"
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text(text)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                
            }
            .frame(width: 88, height: 44)
            .background(.ultraThickMaterial)
            .cornerRadius(12)
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
