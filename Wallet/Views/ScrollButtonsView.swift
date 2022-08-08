//
//  ScrollButtonsView.swift
//  Wallet
//
//  Created by Kamil Książek on 08/08/2022.
//

import SwiftUI

struct ScrollButtonsView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 10) {
                ForEach(1...5, id: \.self) {_ in
                    ButtonCategoryView()
                }
            }
        }//MARK: SCROLL VIEW
        .frame(height: 60)
        .padding()
    }
}

struct ScrollButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollButtonsView()
    }
}
